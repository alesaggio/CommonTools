{{#HAS_CUT}}
        __cut = ({{CUT}});
        if (__cut) {
{{/HAS_CUT}}
{{#HAS_WEIGHT}}
{{#NO_WEIGHTS_ON_DATA}}
            if (runOnMC) {
{{/NO_WEIGHTS_ON_DATA}}
                __weight = ({{WEIGHT}}) * __sample_weight;
{{#NO_WEIGHTS_ON_DATA}}
            } else {
                __weight = 1;
            }
{{/NO_WEIGHTS_ON_DATA}}
{{/HAS_WEIGHT}}
            fill({{HIST}}.get(), {{VAR}}, __weight);
{{#HAS_CUT}}
        }
{{/HAS_CUT}}

