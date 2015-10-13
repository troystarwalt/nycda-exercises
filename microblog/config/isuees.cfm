<cfparam name="form.name" default="">
<cfparam name="form.description" default="">
<cfparam name="form.flag_status" default="1">
<cfparam name="form.priority" default="10">
<cfparam name="form.ID_issue_type" default="0">
<cfparam name="form.ID_school" default="0">
<cfparam name="form.ID_owner" default="0">
<cfparam name="form.ID_victim" default="0">

<cfquery name="get_ID" datasource="#g_datasource_production#">
  select max(id_issue) as xNewID from issue
</cfquery>
<cfif not isNumeric(get_ID.xNewID)>
  <cfset xNewID = 1000>
<cfelse>
  <cfset xNewID = get_ID.xNewID + 1>
</cfif>

<!--- attribute update to author --->
<cfquery name="get_author" datasource="#g_datasource_production#">
  select name_first, name_last from person where id_person = '#client.id_person#'
</cfquery>
<cfset xLeadText = "#xBreak#[On #dateFormat(now(),'yyyy-mm-dd')# #timeFormat(now())# #get_author.name_first# #get_author.name_last# started]#xBreak#">

<cfquery name="save_issue" datasource="#g_datasource_production#">
  insert into issue(ID_issue, name, description, flag_status, priority, 
    ID_school, ID_issue_type, ID_owner, ID_victim, date_created, date_last_update)
  values(#xNewID#, '#trim(left(form.name,128))#', 
    <cfqueryparam value="#preserveSingleQuotes(xLeadText)##trim(preserveSingleQuotes(form.description))##xBreak#" cfsqltype="CF_SQL_LONGVARCHAR">, 
    #form.flag_status#, #form.priority#, '#form.id_school#', #form.id_issue_type#, '#form.id_owner#', 
    '#form.id_victim#', #createODBCDateTime(now())#, #createODBCDateTime(now())#)
</cfquery>

<cfset client.issue_id_hilite = xNewID>
<cfset client.dialog_box = "Your new issue has been created. If your filters are set correctly, your new issue is highlighted in yellow, below.">

<cflocation addtoken="no" url="index_issues.cfm">