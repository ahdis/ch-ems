### Resource Profiles

{% include list-profiles.xhtml %}

#### Resource Overview
This figure illustrates the resources, and their references to each other, for which profiles are defined to represent the CH ELM laboratory report.

{% include img.html img="profiles.png" caption="Fig.: Resource Overview" width="80%" %}


### Data Type Profiles

{% for sd_hash in site.data.structuredefinitions -%} {%- assign sd = sd_hash[1] -%} {%- if sd.kind == "complex-type" and sd.type != "Extension" -%}

<li>
    <a href="{{sd.path}}">{{sd.title}}</a>
</li>
{%- endif -%} {%- endfor -%}
