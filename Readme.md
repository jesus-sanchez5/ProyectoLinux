El objetivo de este proyecto es, realizar un sistema en el que detallaremos una solución completa y realista para la monitorización y riego automático de jardines o zonas plantadas para viviendas particulares. Nuestro fin último es conseguir que los jardines particulares de las casas puedan regarse y monitorizarse automáticamente sin la necesidad de ningún contacto o acción humana. Que el usuario de un jardín esté tranquilo sabiendo que el jardín se va a regar solo con una adecuada monitorización y que no tenga que estar haciéndolo él.

El objetivo se cumplirá mediante la obtención de los datos sobre la humedad del suelo (del terreno plantado) y la temperatura del ambiente.

Los sensores que pretendemos implementar son aquellos que nos proporcionen informaciones sobre la humedad del terreno plantado y otros que nos proporcionen la temperatura. Estos sensores los que podemos encontrar actualmente en el mercado y se detallarán más adelante en el proyecto. Nos interesa almacenar estos datos para poder controlar el riego, además de los datos sobre las últimas veces que se ha regado, para así poder determinar en qué condiciones, días y momentos del día es interesante activar el riego o no, y que no sea algo que esté en constante funcionamiento, que se active una, dos o tres veces al día (las necesarias en cada caso), o ninguna si ni fuese necesario, y dependiendo también de la estación del año y las informaciones que nos proporcionan los sensores.

Es importante tener más de un sensor de ambos tipos recogiendo datos, ya que, en un jardín es posible que no todas las zonas tengan el mismo tipo de tierra, que haya algunos tipos de plantas que necesiten mayor o menor cantidad de agua o que no en todas las zonas del jardín se alcance las mismas temperaturas, ya que puede haber zonas de sombra continua o intermitente y zonas de mayor sol. Se realizará la media de los valores de las temperaturas obtenidas ya que, en nuestro caso, y mayormente, es algo que puede variar de un sensor a otro con más facilidad debido a las zonas de sol y de sombra del jardín.

Se colocarán tres sensores de humedad del suelo, aproximada mente a la misma distancia unos de los otros, y dos sensores de temperatura en dos zonas opuestas (sol y sombra). Estos sensores se conectarán a placas ESP32 que registrarán los valores en el servidor de ThingsBoard en tiempo real, y se mantendrá un histórico de ellos. En otra placa ESP32 conectaremos una bomba de agua que se conectará a la manguera, y mediante las órdenes proporcionadas por ThingsBoard, según los datos que recoja, activará o desactivará esta bomba para el riego automático del jardín.

La automatización a través del servidor es lo que hará que se cumpla el objetivo de nuestro proyecto, ya que será el servidor quien procese los datos de los sensores que le son transmitidos y también será quien dé las órdenes a la bomba para realizar el riego sin la necesidad de que el usuario final lo esté controlando constantemente. Así, se sentirá más libre y confiará plenamente en que su jardín se mantenga cuidado conforme a las propias necesidades del jardín.
