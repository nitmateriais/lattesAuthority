# lattesAuthority
Serviço REST para alimentar uma autoridade de nomes baseada no Currículo Lattes

## Instalando

```
sudo apt-get install python-tornado python-lxml python-suds
sudo useradd -r restpy
sudo make install
```

## Serviços

### Consulta por nome

```
$ curl 'http://localhost:7070/search?q=panepucci'
<results>
  <person>
    <idCNPq>1145197834780747</idCNPq>
    <name>Patricia Viana Panepucci</name>
    <nameVariant>PANEPUCCI, P. V.</nameVariant>
    <firstName>Patricia Viana</firstName>
    <lastName>Panepucci</lastName>
  </person>
  <person>
    <idCNPq>0882937117956745</idCNPq>
    <name>Giovana Troya Marques Panepucci</name>
    <nameVariant>PANEPUCCI, G. T. M.</nameVariant>
    <firstName>Giovana Troya Marques</firstName>
    <lastName>Panepucci</lastName>
    <institution>Faculdade Bandeirantes</institution>
  </person>
  <person>
    <idCNPq>3238851730775391</idCNPq>
    <name>Luciano Gabriel Panepucci</name>
    <nameVariant>PANEPUCCI, L. G.</nameVariant>
    <firstName>Luciano Gabriel</firstName>
    <lastName>Panepucci</lastName>
  </person>
  <person>
    <idCNPq>9110045494449064</idCNPq>
    <name>Horacio Carlos Panepucci</name>
    <nameVariant>PANEPUCCI, H. C.</nameVariant>
    <firstName>Horacio Carlos</firstName>
    <lastName>Panepucci</lastName>
    <institution>Instituto de F&#237;sica de S&#227;o Carlos</institution>
  </person>
</results>
```

### Consulta por idCNPq

```
$ curl 'http://localhost:7070/byid/0920066398294419'
<results>
  <person>
    <idCNPq>0920066398294419</idCNPq>
    <name>Targino de Ara&#250;jo Filho</name>
    <nameVariant>ARA&#218;JO FILHO, T.</nameVariant>
    <nameVariant>ARA&#218;JO FILHO, TARGINO DE</nameVariant>
    <firstName>Targino de</firstName>
    <lastName>Ara&#250;jo Filho</lastName>
    <institution>Universidade Federal de S&#227;o Carlos</institution>
  </person>
</results>
```
