{*
 +--------------------------------------------------------------------+
 | CiviCRM version 4.4                                                |
 +--------------------------------------------------------------------+
 | Copyright CiviCRM LLC (c) 2004-2013                                |
 +--------------------------------------------------------------------+
 | This file is a part of CiviCRM.                                    |
 |                                                                    |
 | CiviCRM is free software; you can copy, modify, and distribute it  |
 | under the terms of the GNU Affero General Public License           |
 | Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
 |                                                                    |
 | CiviCRM is distributed in the hope that it will be useful, but     |
 | WITHOUT ANY WARRANTY; without even the implied warranty of         |
 | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
 | See the GNU Affero General Public License for more details.        |
 |                                                                    |
 | You should have received a copy of the GNU Affero General Public   |
 | License and the CiviCRM Licensing Exception along                  |
 | with this program; if not, contact CiviCRM LLC                     |
 | at info[AT]civicrm[DOT]org. If you have questions about the        |
 | GNU Affero General Public License or the licensing of CiviCRM,     |
 | see the CiviCRM license FAQ at http://civicrm.org/licensing        |
 +--------------------------------------------------------------------+
*}

{* include wysiwyg related files*}
{include file="CRM/common/wysiwyg.tpl" includeWysiwygEditor=true}

{* enclose all tabs and its content in a block *}
<div class="crm-block crm-content-block">
  {if $tabHeader and count($tabHeader) gt 1}
    <div id="mainTabContainer">
    <ul>
       {foreach from=$tabHeader key=tabName item=tabValue}
          <li id="tab_{$tabName}" class="crm-tab-button ui-corner-all{if !$tabValue.valid} disabled{/if}{if isset($tabValue.class)} {$tabValue.class}{/if}">
          {if $tabValue.active}
             <a href="{if !empty($tabValue.template)}#panel_{$tabName}{else}{$tabValue.link}{/if}" title="{$tabValue.title}{if !$tabValue.valid} ({ts}disabled{/ts}){/if}">{$tabValue.title}</a>
          {else}
             <span {if !$tabValue.valid} title="{ts}disabled{/ts}"{/if}>{$tabValue.title}</span>
          {/if}
          </li>
       {/foreach}
    </ul>
      {foreach from=$tabHeader key=tabName item=tabValue}
        {if !empty($tabValue.template)}
          <div id="#panel_{$tabName}">
            {include file=$tabValue.template}
          </div>
        {/if}
      {/foreach}
    </div>
  {/if}
  <div class="clear"></div>
</div> {* crm-content-block ends here *}
