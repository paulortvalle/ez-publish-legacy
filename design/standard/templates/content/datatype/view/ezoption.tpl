{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<label>{$attribute.content.name|wash( xhtml )}:</label>
{if $attribute.content.option_list}
<select name="eZOption[{$attribute.id}]">
{foreach $attribute.content.option_list as $Options}
    {if ne( $Options.additional_price, '' )}
        <option value="{$Options.id}">{$Options.value|wash()} - {$Options.additional_price|l10n( currency )}</option>
    {else}
        <option value="{$Options.id}">{$Options.value|wash()}</option>
    {/if}
{/foreach}
</select>
{else}
<p>{'There are no options.'|i18n( 'design/standard/content/datatype' )}</p>
{/if}
