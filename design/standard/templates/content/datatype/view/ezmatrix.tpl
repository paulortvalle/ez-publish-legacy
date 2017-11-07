{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let matrix=$attribute.content}
<table class="list" cellspacing="0">
<tr>
{foreach $matrix.columns.sequential as $ColumnNames}
<th>{$ColumnNames.name}</th>
{/foreach}
</tr>
{foreach $matrix.rows.sequential as $Rows sequence array( bglight, bgdark ) as $rowSequence}
<tr class="{$rowSequence}">
    {foreach $Rows.item.columns as $Columns}
    <td>{$Columns|wash( xhtml )}</td>
    {/foreach}
</tr>
{/foreach}
</table>
{/let}