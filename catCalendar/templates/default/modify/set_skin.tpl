{**
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or (at
 *   your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful, but
 *   WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 *   General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, see <http://www.gnu.org/licenses/>.
 *
 *   @author			Matthias Glienke, creativecat
 *   @copyright			2018, Black Cat Development
 *   @link				https://blackcat-cms.org
 *   @license			http://www.gnu.org/licenses/gpl.html
 *   @category			CAT_Modules
 *   @package			catCalendar
 *
 *}
<div class="catCal_skin fc_br_top">
	<p class="ccIcons-template cc_toggle_set">{translate('Set skin')} <small>({$options.variant})</small></p>
	<form action="{$CAT_URL}/modules/catCalendar/save.php" method="post" class="fc_gradient1 fc_border_all_light fc_br_bottom fc_shadow_small">
		<input type="hidden" name="page_id" value="{$page_id}">
		<input type="hidden" name="section_id" value="{$section_id}">
		<input type="hidden" name="options" value="variant">
		<select name="variant">
		{foreach $module_variants var}
			<option value="{$var}"{if $var == $options.variant} selected="selected"{/if}>{$var}</option>
		{/foreach}
		</select><br/>
		<input type="submit" name="speichern" value="{translate('Save skin &amp; reload')}"><br/>
		<input type="reset" name="reset" value="{translate('Close')}">
	</form>
</div>