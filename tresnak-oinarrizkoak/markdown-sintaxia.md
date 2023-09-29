Markdown arin ulertzeko eta idazteko markatze hizkuntza bat da. Dokumentazio, README fitxategiak eta GitHub eta Jekyll bezalako plataformetan edukiak sortzeko erabilera zabala du. Hemen dituzu Markdown komando erabilienak:

## TOP erabilenak
  [Goiburuak](#goiburuak)
  [Kodea](#kodea)
  [Zerrendak](#zerrendak)
  
### Goiburuak
```markdown
# H1
## H2
### H3
#### H4
##### H5
###### H6
```

### Azpimarrak
```markdown
*italic* edo _italic_
**bold** edo __bold__
***bold eta italic*** edo ___bold eta italic___
```

### Zerrendak

#### Zerrenda Desordenatuak
```markdown
- Elementu 1
- Elementu 2
  - Azpi-elementu 1
  - Azpi-elementu 2
```

#### Zerrenda Ordenatuak
```markdown
1. Elementu 1
2. Elementu 2
   1. Azpi-elementu 1
   2. Azpi-elementu 2
```

### Estekak
```markdown
[Erakutsiko den testua](URL)
```

### Irudiak
```markdown
![Alt testua](URL)
```

### Kodea

#### Kode Zuzena
```markdown
`kodea`
```

#### Kode Blokea
<pre>
```hizkuntza
Zure kodea hemen
```
</pre>

### Bloke Aipuak
```markdown
> Hau bloke aipu bat da.
```

### Marra Horizontalak
```markdown
---
```

### Taulak
```markdown
| Goiburu 1 | Goiburu 2 |
|-----------|-----------|
| Gelaxka 1 | Gelaxka 2 |
| Gelaxka 3 | Gelaxka 4 |
```

### Ataza Zerrendak
```markdown
- [x] Burututako ataza
- [ ] Burutu gabeko ataza
```

### Marratua
```markdown
~~Marratua~~
```

Hauek dira Markdown komando erabilienak. Testua erraz formatu dezakezu eta zure edukia irakurgarriago egin dezakezu.

Markdown fitxategi batean aurkibidea edo eduki taula (TOC) eskuz edo automatikoki sortu daiteke, erabiliko duzun plataformaren arabera. Hemen dituzu hainbat metodo:

### Eskuzko Metodoa

Dokumentuaren atal desberdinak estekatzen dituzten hiperestekak eskuz sortu ditzakezu. Lehenik eta behin, sortu aingura etiketak atal bakoitzarentzat, eta ondoren estekatu aingura hauetara zure aurkibidean.

1. **Sortu Aingurak**: Markdown automatikoki sortzen ditu HTML aingurak goiburu bakoitzarentzat. Aingura etiketa goiburuaren testutik eratorriko da.

    ```markdown
    ## Nire Atala
    ```

    Honek aingura bat sortuko du, honela estekatu dezakezuna: `#nire-atala`.

2. **Sortu Aurkibidea**: Orain aurkibide bat sortu dezakezu aingura hauetara estekatzen duena.

    ```markdown
    # Eduki Taula
    - [Sarrera](#sarrera)
    - [Nire Atala](#nire-atala)
    ```

### Automatikoa Metodoa

GitHub bezalako plataformak automatikoki sortzen dute eduki taula goiburuak oinarri hartuz. Hala ere, Jekyll bezalako estatiko gune sortzaile bat erabiltzen baduzu, eduki taula automatikoki sortzeko pluginak izan ditzakezu.

Adibidez, Jekyll-en `kramdown` analizatzailearekin, `{:.toc}` txertatu dezakezu goiburuak oinarri hartuta eduki taula automatikoki sortzeko:

```markdown
* TOC
{:toc}
```

### Luzapenak edo Tresnak Erabiliz

Markdown editore eta luzapen desberdinak daude eduki taula automatikoki sortzeko. Adibidez, Visual Studio Code-rako Markdown All in One luzapenak ezaugarri hau du.

### Oharra

Eduki taula sortzeko sintaxia alda daiteke erabiliko duzun Markdown analizatzailearen arabera, beraz, erabiliko duzun tresna edo plataformaren dokumentazioa kontsultatzea onuragarria izan daiteke.

Metodo hauetako bat erabiliz, Markdown dokumenturako nabigagarria den aurkibidea edo eduki taula sortu dezakezu.
