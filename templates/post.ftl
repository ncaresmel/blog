<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="page-header">
		<h1><#escape x as x?xml>${content.title}</#escape></h1>
	</div>

	<p><em>${content.date?string("dd MMMM yyyy")}</em></p>

	<p>${content.body}</p>

        <div id="disqus_thread"></div>
	<script type="text/javascript">
		var disqus_shortname = '${config.disqus_username}'; // Required - Replace example with your forum shortname
		var disqus_identifier = '${content.uri}';
		var disqus_title = "${content.title}";
		var disqus_url = '${config.site_host}${content.uri}';

		/* * * DON'T EDIT BELOW THIS LINE * * */
		(function() {
		    var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
		    dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
		    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
		})();
	</script>
	<hr />

	<noscript>
    		Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a>
	</noscript>
	
<#include "footer.ftl">
