<#include "header.ftl">
	
	<#include "menu.ftl">

	<!--<div class="page-header">
		<h1>Blog</h1>
	</div>-->
	<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
  			<p>${post.body}</p>
			<a href="${post.uri}#disqus_thread" data-disqus-identifier="${post.uri}">${config.disqus_no_comments}</a>
  		</#if>
  	</#list>
	
	<hr />
	
	<p>Billets plus anciens disponibles sur la page <a href="/${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
