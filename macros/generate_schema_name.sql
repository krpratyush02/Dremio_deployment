{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- if custom_schema_name is none -%}
        {{ default_schema }}

    {%- else -%}
        {% if node.fqn[2:-1]|length == 0 %}
            {{ custom_schema_name }}
        {% else %}
            {# Concat the subfolder(s) name #}
            {% set suffix = node.fqn[2:-1]|join('.') %}
            {{ custom_schema_name }}.{{ suffix }}
        {% endif %}

    {%- endif -%}

{%- endmacro %}
