<div class="row">
    <div class="span2 pull-left">
        <strong>Turn: </strong>
        <span class="badge badge-info">{{state.turn}}</span>
    </div>

    <div class="span2 pull-right">
    <a href="#" class="btn next-btn pull-right"> Next <i class="icon icon-large icon-arrow-right"></i></a></div>

</div>
<div id="resource-status" class="row" >
    {{#with resources}}

        <div class="span2 center" title="Energy">
            <i class="icon icon-bolt"></i>
            <span class="label label-inverse">
                {{energy.output}}/{{energy.input}} mW
            </span>
        </div>

        {{#with bricks}}
        <div class="span2 center" title="Bricks">
            <i class="resource icon icon-hdd"></i>
            <span class="label label-inverse">
             {{total}} kg  (+{{input}}/-{{output}})
            </span>
        </div>
        {{/with}}

        {{#with aluminum}}
        <div class="span2 center" title="Aluminum">
            <strong class="resource">Al</strong>
            <span class="label label-inverse">
                {{total}} kg
                (+{{input}}/-{{output}})
            </span>
        </div>
        {{/with}}

        {{#with silicon}}
        <div class="span2 center" title="Silicone">
            <strong class="resource">Si</strong>
            <span class="label label-inverse">
            {{total}} kg
            (+{{input}}/-{{output}})
            </span>
        </div>
        {{/with}}

        {{#with he3}}
        <div class="span2 center" title="Helium-3">
            <strong class="resource"><sup>3</sup>He</strong>
            <span class="label label-inverse">
                {{total}} kg
            (+{{input}}/-{{output}})
            </span>
        </div>
        {{/with}}
    {{/with}}

    <div class="span2 center" tilte="Budget">
        <strong class="resource"><i class="icon icon-globe"></i>$</strong>
        <span class="label label-inverse">
            {{state.resources.money}}M
        </span>
    </div>

</div>