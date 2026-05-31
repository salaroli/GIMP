# GIMP Config

Configurações pessoais do GIMP com o mod [PhotoGIMP](https://github.com/Diolinux/PhotoGIMP) (Diolinux) aplicado.

O PhotoGIMP deixa o GIMP com layout e atalhos parecidos com o Photoshop.

## Estrutura

- `3.2/` — configs ativas do GIMP 3.2
- `PhotoGIMP/` — submodule do repo oficial do Diolinux
- `apply.sh` — script que copia os arquivos do PhotoGIMP para `3.2/`

> O PhotoGIMP distribui os arquivos em `.config/GIMP/3.0/`, mas o GIMP 3.2+ lê de `3.2/`. O `apply.sh` faz essa tradução de caminho.

## Atualizar o PhotoGIMP

Quando o Diolinux lançar atualizações:

```bash
cd ~/.config/GIMP
git checkout -b chore/update-photogimp
git submodule update --remote
./apply.sh
git add .
git commit -m "chore: update PhotoGIMP"
git push -u origin chore/update-photogimp
```

Depois abrir PR no GitHub para mergear na `main`.
