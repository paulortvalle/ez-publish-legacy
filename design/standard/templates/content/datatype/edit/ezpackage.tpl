{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{default attribute_base=ContentObjectAttribute}
{let package_attr_name=$attribute.data_text
     package_list=fetch( package, list,
                         hash( filter_array, array( array( type, $attribute.contentclass_attribute.data_text1 ) ) ) )}
<div class="block">
<label for="ezpackage_data_text_{$attribute.id}_siteaccess">{'Siteaccess'|i18n( 'design/standard/edit/' )}:</label>
<select id="ezpackage_data_text_{$attribute.id}_siteaccess" name="CurrentSiteAccess">
    <option value="Global">{'Global (override)'|i18n( 'design/standard/edit/' )}</option>
    {foreach ezini('SiteAccessSettings','AvailableSiteAccessList') as $SiteAccess}
        <option value="{$SiteAccess}"
        {foreach $package_list as $Package}
        {if eq( concat( $Package.name, ':', $SiteAccess ), $attribute.data_text )}
                selected="selected"
            {set scope=root package_attr_name=$Package.name}
            {break}
        {/if}
        {/foreach}
        >{$SiteAccess}</option>
    {/foreach}
</select>
</div>

<div class="block">
{section name=Package loop=$:package_list}
 <div class="package_element">
      <label for="ezpackage_data_text_{$attribute.id}_{$:item.name|wash}"><img class="package-thumbnail" src={$:item|ezpackage( thumbnail )|ezroot} alt="{$:item.summary|wash}" /></label>
      <br />
      <input type="radio" id="ezpackage_data_text_{$attribute.id}_{$:item.name|wash}" name="{$attribute_base}_ezpackage_data_text_{$attribute.id}" value="{$:item.name|wash}"
      {if eq( $:item.name, $package_attr_name )} checked{/if} /><label for="ezpackage_data_text_{$attribute.id}_{$:item.name|wash}">{$:item.summary|wash}:</label>
 </div>
 {delimiter modulo=4}
    </div>
    <div class="block">
 {/delimiter}
{/section}
</div>

{/let}
{/default}
