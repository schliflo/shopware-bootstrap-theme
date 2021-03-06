{namespace name="frontend/listing/listing_actions"}

{block name="frontend_listing_filter_facet_boolean"}
    <div class="filter-col">
        <div class="filter-panel filter-panel--input sw5-plugin filter-boolean filter-value facet-{$facet->getFacetName()|escape:'htmlall'} btn btn-default"
             data-filter-type="value"
             data-facet-name="{$facet->getFacetName()}"
             data-field-name="{$facet->getFieldName()|escape:'htmlall'}">

            {block name="frontend_listing_filter_facet_boolean_flyout"}
                <div class="checkbox-inline filter-panel--input man">
                    {block name="frontend_listing_filter_facet_boolean_title"}
                        <input type="checkbox"
                               id="{$facet->getFieldName()|escape:'htmlall'}"
                               name="{$facet->getFieldName()|escape:'htmlall'}"
                               value="1"
                               {if $facet->isActive()}checked="checked" {/if}/>
                        <label for="{$facet->getFieldName()}" class="filter-panel-input sw5-plugin mbn">
                            {block name="frontend_listing_filter_facet_boolean_checkbox"}
                            {/block}
                            <span class="filter-panel-title sw5-plugin">{$facet->getLabel()}</span>
                        </label>
                    {/block}
                </div>
            {/block}
        </div>
    </div>
{/block}
