{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{default attribute_base=ContentObjectAttribute}

{if $attribute.content.author_list}
<table class="list" cellspacing="0">
<tr>
    <th class="tight">&nbsp;</th>
    <th>{'Name'|i18n( 'design/standard/content/datatype' )}</th>
    <th>{'Email'|i18n( 'design/standard/content/datatype' )}</th>
</tr>
{foreach $attribute.content.author_list as $index => $Author sequence array( bglight, bgdark ) as $authorSequence}
<tr class="{$authorSequence}">

{* Remove. *}
<td><input id="ezcoa-{if ne( $attribute_base, 'ContentObjectAttribute' )}{$attribute_base}-{/if}{$attribute.contentclassattribute_id}_{$attribute.contentclass_attribute_identifier}_check_{$index}" class="ezcc-{$attribute.object.content_class.identifier} ezcca-{$attribute.object.content_class.identifier}_{$attribute.contentclass_attribute_identifier}" type="checkbox" name="{$attribute_base}_data_author_remove_{$attribute.id}[]" value="{$Author.id}" title="{'Select author row for removal.'|i18n( 'design/standard/content/datatype' )}" /></td>

{* Name. *}
<td>
<input id="ezcoa-{if ne( $attribute_base, 'ContentObjectAttribute' )}{$attribute_base}-{/if}{$attribute.contentclassattribute_id}_{$attribute.contentclass_attribute_identifier}_name_{$index}" class="box ezcc-{$attribute.object.content_class.identifier} ezcca-{$attribute.object.content_class.identifier}_{$attribute.contentclass_attribute_identifier}" type="text" name="{$attribute_base}_data_author_name_{$attribute.id}[]" value="{$Author.name|wash}" />
<input type="hidden" name="{$attribute_base}_data_author_id_{$attribute.id}[]" value="{$Author.id}" />
</td>

{* Email. *}
<td><input id="ezcoa-{if ne( $attribute_base, 'ContentObjectAttribute' )}{$attribute_base}-{/if}{$attribute.contentclassattribute_id}_{$attribute.contentclass_attribute_identifier}_email_{$index}" class="box ezcc-{$attribute.object.content_class.identifier} ezcca-{$attribute.object.content_class.identifier}_{$attribute.contentclass_attribute_identifier}" type="text" name="{$attribute_base}_data_author_email_{$attribute.id}[]" value="{$Author.email|wash}" /></td>

</tr>
{/foreach}
</table>
{else}
<p>{'There are no authors in the author list.'|i18n( 'design/standard/content/datatype' )}</p>
{/if}


{if $attribute.content.author_list}
<input class="button" type="submit" name="CustomActionButton[{$attribute.id}_remove_selected]" value="{'Remove selected'|i18n('design/standard/content/datatype')}" title="{'Remove selected rows from the author list.'|i18n( 'design/standard/content/datatype' )}" />
{else}
<input class="button-disabled" type="submit" name="CustomActionButton[{$attribute.id}_remove_selected]" value="{'Remove selected'|i18n('design/standard/content/datatype')}" disabled="disabled" />
{/if}

<input class="button" type="submit" name="CustomActionButton[{$attribute.id}_new_author]" value="{'Add author'|i18n('design/standard/content/datatype')}" title="{'Add a new row to the author list.'|i18n( 'design/standard/content/datatype' )}" />

{/default}