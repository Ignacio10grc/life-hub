import sys, os, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from recursos import R
from conceptos import BLOQUE, DEPENDENCIAS

CORE_SET = set('S01 Y01 Y02 Y03 X06 S02 K02 P04 X02 K03 P01 P03 K05 K06 K07 X08 S07 B06 X21 M02 M04 X07 D01 S09 B08 S11 M06 M08 X15 S12 X28 M09 X11 S13 X17 K10 M10 X12 S15 S16 H01 X01 K13 K16 K17 K19 K21 K24 K28 X39 X42'.split())
for r in R: r['core'] = r['id'] in CORE_SET
RID = {r['id']: r for r in R}
NAME = {'C': 'COMPLETA', 'P': 'PARCIAL', 'A': 'AUSENTE', 'R': 'REDUNDANTE', 'I': 'RECURSO INADECUADO'}

rows = []
errors = []
for sec, titulo, body in BLOQUE:
    for line in body.strip().splitlines():
        parts = line.split('|')
        if len(parts) != 7:
            errors.append(f'Línea mal formada: {line}')
            continue
        c, v1, v2, rec, ev, pr, acc = parts
        recs = [] if rec in ('—', '') else rec.split(',')
        for x in recs:
            if x not in RID:
                errors.append(f'{sec} {c}: recurso {x} inexistente')
            elif RID[x]['estado'] == 'ELIMINADO':
                errors.append(f'{sec} {c}: usa recurso eliminado {x}')
        if v2 == 'C' and ev == 'E3':
            errors.append(f'{sec} {c}: COMPLETA con evidencia E3')
        if v2 == 'C' and not recs:
            errors.append(f'{sec} {c}: COMPLETA sin recursos')
        if v2 in ('P',) and not recs:
            errors.append(f'{sec} {c}: PARCIAL sin recursos')
        rows.append(dict(sec=sec, tit=titulo, c=c, v1=v1, v2=v2, recs=recs, ev=ev, pr=pr, acc=acc))

if errors:
    print('\n'.join(errors)); sys.exit(1)

# numeración de ID de concepto
cnt = collections.Counter()
for r in rows:
    cnt[r['sec']] += 1
    r['id'] = f"{r['sec']}.{cnt[r['sec']]:02d}"

def pct(n, d): return f"{100*n/d:.1f} %".replace(".", ",")
N = len(rows)
v1 = collections.Counter(r['v1'] for r in rows)
v2 = collections.Counter(r['v2'] for r in rows)
proy = [r for r in rows if r['sec'] == '5.26']
noproy = [r for r in rows if r['sec'] != '5.26']
pr_any = sum(1 for r in noproy if r['pr'] != '-')
pr_E = sum(1 for r in noproy if r['pr'] == 'E')
pr_S = sum(1 for r in noproy if r['pr'] == 'S')
pr_L = sum(1 for r in noproy if r['pr'] == 'L')
ev2 = collections.Counter(r['ev'] for r in rows if r['v2'] == 'C')

# uso de recursos
uso = collections.Counter(x for r in rows for x in r['recs'])
est = collections.Counter(r['estado'] for r in R)

# por sección: resumen V2
secsum = collections.OrderedDict()
for r in rows:
    k = (r['sec'], r['tit'])
    secsum.setdefault(k, collections.Counter())[r['v2']] += 1

out = {}
L = []
L.append(f"| Métrica | V1 | V2.1 |")
L.append("|---|---|---|")
L.append(f"| Conceptos del bloque (hojas del temario, 5.1–5.26) | {N} | {N} |")
for k in ['C', 'P', 'A', 'I']:
    L.append(f"| {NAME[k]} | {v1.get(k,0)} ({pct(v1.get(k,0),N)}) | {v2.get(k,0)} ({pct(v2.get(k,0),N)}) |")
L.append(f"| Cobertura (algún recurso: COMPLETA + PARCIAL) | {pct(v1['C']+v1['P']+v1.get('I',0),N)} | {pct(v2['C']+v2['P'],N)} |")
L.append(f"| Cobertura completa demostrable | {pct(v1['C'],N)} | {pct(v2['C'],N)} |")
out['STATS'] = '\n'.join(L)
out['N'] = N
out['EVC'] = ', '.join(f"{k}: {v}" for k, v in sorted(ev2.items()))
out['PRACT'] = (f"De {len(noproy)} conceptos (sin contar los proyectos): {pr_any} tienen algún recurso de práctica "
                f"({pr_E} con ejercicios o problemas, {pr_S} con simulación, {pr_L} con laboratorio o proyecto); "
                f"**{len(noproy)-pr_any} no tienen práctica** ({pct(len(noproy)-pr_any,len(noproy))}).")
pc = collections.Counter(r['v2'] for r in proy)
out['PROY'] = (f"De {len(proy)} proyectos de 5.26: {pc['C']} respaldados (COMPLETA), {pc['P']} con respaldo parcial, "
               f"{pc['A']} sin recursos.")
out['RECS'] = '\n'.join([
    "| Recursos | Número |", "|---|---|",
    f"| Recursos individuales en la V1 (57 en el registro + 5 que solo estaban en el documento) | 62 |",
    f"| Conservados sin cambios | {est['CONSERVADO']} |",
    f"| Conservados con corrección (datos o alcance) | {est['CORREGIDO']} |",
    f"| Conservados como opcionales (duplicados o resúmenes) | {est['OPCIONAL']} |",
    f"| Sustituidos | {est['SUSTITUTO']} |",
    f"| Eliminados | {est['ELIMINADO']} |",
    f"| Nuevos | {est['NUEVO']} |",
    f"| **Total en la V2.1 (sin eliminados)** | **{len(R)-est['ELIMINADO']}** |",
    f"| Marcados como CORE | {sum(1 for r in R if r['core'])} |",
])

# conservado + corregido + opcional + sustituido + eliminado deben sumar las fichas V1 en el catálogo
v1_en_catalogo = est['CONSERVADO'] + est['CORREGIDO'] + est['OPCIONAL'] + est['SUSTITUTO'] + est['ELIMINADO']
out['V1CAT'] = v1_en_catalogo

# resumen por sección
S = ["| Apartado | Conceptos | COMPLETA | PARCIAL | AUSENTE |", "|---|---|---|---|---|"]
for (sec, tit), c in secsum.items():
    tot = sum(c.values())
    S.append(f"| {sec} {tit} | {tot} | {c['C']} | {c['P']} | {c['A']} |")
out['SECS'] = '\n'.join(S)

# matriz
M = []
cur = None
for r in rows:
    if r['sec'] != cur:
        cur = r['sec']
        M.append(f"\n#### {r['sec']} {r['tit']}\n")
        M.append("| ID | Concepto | Recursos V2.1 | V1 | V2.1 | Evid. | Práctica | Acción |")
        M.append("|---|---|---|---|---|---|---|---|")
    recs = ', '.join(r['recs']) if r['recs'] else '—'
    prmap = {'E': 'ejercicios', 'S': 'simulación', 'L': 'proyecto', '-': '—'}
    M.append(f"| {r['id']} | {r['c']} | {recs} | {NAME[r['v1']]} | **{NAME[r['v2']]}** | {r['ev']} | {prmap[r['pr']]} | {r['acc']} |")
out['MATRIZ'] = '\n'.join(M)

# ausentes
out['AUSENTES'] = '\n'.join(f"- `{r['id']}` {r['c']} ({r['sec']} {r['tit']}) — {r['acc']}" for r in rows if r['v2'] == 'A')

# catálogo
order = ['CURSO PRINCIPAL', 'INTRODUCCIÓN', 'PROFUNDIZACIÓN', 'REFERENCIA', 'DOCUMENTACIÓN TÉCNICA', 'EJERCICIOS', 'SIMULACIÓN', 'LABORATORIO', 'PROYECTO', 'PRÁCTICA']
C = []
def ficha(r):
    usados = uso.get(r['id'], 0)
    lines = [f"**{r['id']} · {r['name']}**" + (" · `CORE`" if r['core'] else "")]
    lines.append(f"- URL: {r['url']}")
    lines.append(f"- Función: `{r['func']}` · Formato: {r['fmt']} · Autoridad: {r['tier']} · Nivel: {r['nivel']} · Estado: **{r['estado']}** · Evidencia: {r['ev']}")
    lines.append(f"- Autor/institución: {r['autor']}")
    lines.append(f"- Cubre: {r['cubre']}")
    lines.append(f"- Conceptos de la matriz que apoya: {usados}")
    lines.append(f"- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta")
    if r['nota']:
        lines.append(f"- Notas: {r['nota']}")
    return '\n'.join(lines)
activos = [r for r in R if r['estado'] != 'ELIMINADO']
for f in order:
    grp = [r for r in activos if r['func'] == f and r['estado'] != 'OPCIONAL']
    if not grp: continue
    C.append(f"\n### {f} ({len(grp)})\n")
    for r in grp:
        C.append(ficha(r) + '\n')
opc = [r for r in activos if r['estado'] == 'OPCIONAL']
C.append(f"\n### OPCIONALES ({len(opc)})\n")
for r in opc:
    C.append(ficha(r) + '\n')
elim = [r for r in R if r['estado'] == 'ELIMINADO']
C.append(f"\n### ELIMINADOS ({len(elim)})\n")
for r in elim:
    C.append(f"- ~~{r['id']} · {r['name']}~~ — {r['url']} — {r['nota']}")
out['CATALOGO'] = '\n'.join(C)

# recursos sin uso en la matriz
vid = sum(1 for r in rows if any(RID[x]['fmt']=='vídeo' for x in r['recs']))
vid1 = sum(1 for r in noproy if any(RID[x]['fmt']=='vídeo' for x in r['recs']))
out['F3'] = f"{vid1} de {len(noproy)} ({pct(vid1,len(noproy))})"
out['SINUSO'] = ', '.join(r['id'] for r in activos if uso.get(r['id'], 0) == 0) or 'ninguno'

# CORE
out['CORE'] = '\n'.join(f"| {r['id']} | {r['name']} | {r['func']} | {r['cubre'].split(';')[0]} |" for r in activos if r['core'])
out['NCORE'] = sum(1 for r in activos if r['core'])

# dependencias
out['DEPS'] = '\n'.join(["| ID | Dependencia necesaria | La necesita | Recurso | Estado |", "|---|---|---|---|---|"] +
                        [f"| {a} | {b} | {c} | {d} | {e} |" for a, b, c, d, e in DEPENDENCIAS])

# evidencia de recursos
evr = collections.Counter(r['ev'] for r in activos)
out['EVR'] = f"E1: {evr['E1']} · E2: {evr['E2']} · E3: {evr['E3']}"
out['REVMAN'] = '\n'.join(f"- **{r['id']}** · {r['name']} — motivo: " + ('contenido verificado solo por el título (E3). ' if r['ev'] == 'E3' else '') + r['nota'] for r in activos if 'REVISIÓN MANUAL' in r['nota'] or r['ev'] == 'E3')
out['HIGHQ'] = sum(1 for r in activos if r['tier'] == 'S')
out['TIERS'] = ', '.join(f"{k}: {v}" for k, v in sorted(collections.Counter(r['tier'] for r in activos).items()))

tpl = open(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'plantilla.md')).read()
for k, v in out.items():
    tpl = tpl.replace('{{' + k + '}}', str(v))
import re
left = re.findall(r'\{\{[A-Z0-9]+\}\}', tpl)
if left:
    print('Marcadores sin sustituir:', left); sys.exit(1)
open(os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'bloque-5-energia-v2.md'), 'w').write(tpl)
print('OK', N, dict(v1), dict(v2), dict(est), 'core', out['NCORE'], 'sinuso', out['SINUSO'], 'V1cat', v1_en_catalogo, out['PRACT'], out['PROY'], out['EVR'], out['TIERS'])
