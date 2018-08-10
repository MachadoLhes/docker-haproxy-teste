# HAProxy para MySQL


Imagem de um haproxy específico para ser proxy transparente para mysql.


# Env Vars

Essas são as envvars que a imagem aceita:

`HAPROXY_MYSQL_SOURCE_PORT`: Porta que o HAProxy vai abrir;
`HAPROXY_MYSQL_TARGET_IP`: IP do MySQL de destino;
`HAPROXY_MYSQL_TARGET_PORT`: Porta do MySQL de destino;

**Atenção**: O HAProxy escuta em **todas** as interfaces, cuidado ao rodar essa imagem em máquina pública.
