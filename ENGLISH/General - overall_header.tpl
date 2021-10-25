<!-- BLANK THEME ---->
<!-- VERSION 2.0 - ModernBB ---->
<!-- By Geniuspanda / https://code-lab.tumblr.com/ ---->    
	    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="{S_CONTENT_DIRECTION}" id="min-width" lang="{L_LANG_HTML}" xml:lang="{L_LANG_HTML}" {NAMESPACE_FB_LIKE} {NAMESPACE_FB} {NAMESPACE_BBCODE}>

<head>

    <!--   NEW FONT INSTALL -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400;1,600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese&display=swap"
		  rel="stylesheet"/>
      
    <!--   FONT ICON INSTALL -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">

        <!-- TEXT ON THE BROWSER TAB -->
	<title>{SITENAME_TITLE}{PAGE_TITLE}</title>
      
	<meta http-equiv="content-type" content="text/html; charset={S_CONTENT_ENCODING}"/>
	<meta http-equiv="content-script-type" content="text/javascript"/>
	<meta http-equiv="content-style-type" content="text/css"/>
	<!-- BEGIN switch_compat_meta -->
	<meta http-equiv="X-UA-Compatible" content="IE={switch_compat_meta.VERSION}"/>
	<!-- END switch_compat_meta -->
	<!-- BEGIN switch_canonical_url -->
	<link rel="canonical" href="{switch_canonical_url.CANONICAL_URL}"/>
	<!-- END switch_canonical_url -->
	{META_FAVICO}
	{META}
	{META_FB_LIKE}
	<meta name="title" content="{SITENAME_TITLE}{PAGE_TITLE}"/>
	{T_HEAD_STYLESHEET}
	{CSS}
	<link rel="search" type="application/opensearchdescription+xml" href="/improvedsearch.xml" title="{SITENAME}"/>
	<link rel="search" type="application/opensearchdescription+xml" href="{URL_BOARD_DIRECTORY}/search/improvedsearch.xml" title="{SEARCH_FORUMS}"/>
	<script src="{JQUERY_PATH}" type="text/javascript"></script>
	<!-- BEGIN switch_recent_jquery -->
	<script src="{JS_DIR}jquery1.9/jquery-migrate-1.4.1.js" type="text/javascript"></script>
	<script src="{JQUERY_DIR}browser/v1.0/jquery.browser.min.js" type="text/javascript"></script>
	<script src="{JQUERY_DIR}support/jquery.support.js" type="text/javascript"></script>
	<!-- END switch_recent_jquery -->
	<script src="{JS_DIR}{L_LANG}.js" type="text/javascript"></script>
	{RICH_SNIPPET_GOOGLE}

	<!-- BEGIN switch_ticker -->
	<link type="text/css" rel="stylesheet" href="{JQUERY_DIR}ticker/ticker.css"/>
	<script src="{JQUERY_DIR}ticker/ticker.js" type="text/javascript"></script>
	<!-- END switch_ticker -->

	<!-- BEGIN switch_ticker_new -->
	<script src="{JQUERY_DIR}jcarousel/jquery.jcarousel.js" type="text/javascript"></script>
	<script type="text/javascript">
		//<![CDATA[
		/* Define direction according to admin panel */
		var tickerDirParam = "{switch_ticker.DIRECTION}";
		var slid_vert = false;
		var auto_dir = 'next';
		var h_perso = parseInt({switch_ticker.HEIGHT});

		switch (tickerDirParam) {
			case 'top' :
				slid_vert = true;
				break;

			case 'left':
				break;

			case 'bottom':
				slid_vert = true;
				auto_dir = 'prev';
				break;

			case 'right':
				auto_dir = 'prev';
				break;

			default:
				slid_vert = true;
		}

		$(document).ready(function () {

			$('#fa_ticker_content').css('display', 'block');

			var width_max = $('ul#fa_ticker_content').width();
			var width_item = Math.floor(width_max / {switch_ticker.SIZE});

			if (width_max > 0) {
				$('ul#fa_ticker_content li').css('float', 'left').css('list-style', 'none').width(width_item).find('img').each(function () {
					if ($(this).width() > width_item) {
						var ratio = $(this).width() / width_item;
						var new_height = Math.round($(this).height() / ratio);
						$(this).height(new_height).width(width_item);
					}
				});

				if (slid_vert) {
					var height_max = h_perso;

					$('ul#fa_ticker_content li').each(function () {
						if ($(this).height() > height_max) {
							height_max = $(this).height();
						}
					});

					$('ul#fa_ticker_content').width(width_item).height(height_max).css('marginLeft', 'auto').css('marginRight', 'auto');
					$('ul#fa_ticker_content li').height(height_max);
				}


				$('#fa_ticker_content').jcarousel({
					vertical: slid_vert,
					wrap: 'circular',
					auto: {switch_ticker.STOP_TIME},
					auto_direction: auto_dir,
					scroll: 1,
					size: {switch_ticker.SIZE},
					height_max: height_max,
					animation: {switch_ticker.SPEED}
				});
			} else {
				$('ul#fa_ticker_content li:not(:first)').css('display', 'none');
				$('ul#fa_ticker_content li:first').css('list-style', 'none').css('text-align', 'center');
			}
		});
		//]]>
	</script>
	<!-- END switch_ticker_new -->

	<script type="text/javascript">//<![CDATA[
		$(document).ready(function () {
			<!-- BEGIN switch_enable_pm_popup -->
			pm = window.open('{U_PRIVATEMSGS_POPUP}', '_faprivmsg', 'HEIGHT=225,resizable=yes,WIDTH=400');
			if (pm != null) {
				pm.focus();
			}
			<!-- END switch_enable_pm_popup -->
			<!-- BEGIN switch_report_popup -->
			report = window.open('{switch_report_popup.U_REPORT_POPUP}', '_phpbbreport', 'HEIGHT={switch_report_popup.S_HEIGHT},resizable=yes,scrollbars=no,WIDTH={switch_report_popup.S_WIDTH}');
			if (report != null) {
				report.focus();
			}
			<!-- END switch_report_popup -->
			<!-- BEGIN switch_ticker -->
			$(document).ready(function () {
				Ticker.start({
					height: {switch_ticker.HEIGHT},
					spacing: {switch_ticker.SPACING},
					speed: {switch_ticker.SPEED},
					direction: '{switch_ticker.DIRECTION}',
					pause: {switch_ticker.STOP_TIME}
				});
			});
			<!-- END switch_ticker -->
		});

		<!-- BEGIN switch_login_popup -->
		var logInPopUpLeft, logInPopUpTop, logInPopUpWidth = {LOGIN_POPUP_WIDTH},
			logInPopUpHeight = {LOGIN_POPUP_HEIGHT}, logInBackgroundResize = true, logInBackgroundClass = false;

		$(document).ready(function () {
			$(window).resize(function () {
				var windowWidth = document.documentElement.clientWidth;
				var popupWidth = $("#login_popup").width();
				var mypopup = $("#login_popup");

				$("#login_popup").css({
					"left": windowWidth / 2 - popupWidth / 2
				});
			});
		});
		<!-- END switch_login_popup -->
		//]]>
	</script>

	{GREETING_POPUP}

	<style type="text/css">
		<!-- BEGIN switch_ticker_new -->
		.jcarousel-skin-tango .jcarousel-item {text-align: center;width: 10px;}
		.jcarousel-skin-tango .jcarousel-item-horizontal {margin-right: {switch_ticker.SPACING}px;}
		.jcarousel-skin-tango .jcarousel-item-vertical {margin-bottom: {switch_ticker.SPACING}px;}
		<!-- END switch_ticker_new -->
	</style>

	{HOSTING_JS}

	<!-- BEGIN google_analytics_code -->
	<script async src="https://www.googletagmanager.com/gtag/js?id={G_ANALYTICS_ID}"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', '{G_ANALYTICS_ID}', {'anonymize_ip': true, 'store_gac': false, 'cookie_expires': 13 * 30 * 24 * 60 * 60});
		<!-- BEGIN google_analytics_code_bis -->
		gtag('config', '{G_ANALYTICS_ID_BIS}', {'anonymize_ip': true, 'store_gac': false, 'cookie_expires': 13 * 30 * 24 * 60 * 60});
		<!-- END google_analytics_code_bis -->
	</script>
	<!-- END google_analytics_code -->

</head>

<body id="phpbb">

    <!-- Forum structure -->
    <div class="main_forum">

        <!-- Elevator: to the top -->
        <a id="top" name="top" accesskey="t"></a>
        {JAVASCRIPT}
      
      
       <!----------------------------------------------->
       <!-- FORUM HEADER (above the ad) -------------->

        <div id="page-header">

           <!-- Banner -->
            <a href="{U_INDEX}" id="header"><img loading="lazy" src="{LOGO}" alt="{L_INDEX}" /></a>

           <!-- Navigation bar -->
            <ul class="navbar">
                <li>{GENERATED_NAV_BAR}</li>
            </ul>
            <!-- End navigation bar -->

            <!-- Announcements carousel -->
            <!-- BEGIN switch_ticker_new -->
            <div id="fa_ticker_blockD">
                <div class="module">
                    <div id="fa_ticker_container">
                        <ul id="fa_ticker_content" class="jcarousel-skin-tango" style="display:none">
                            <!-- BEGIN ticker_row -->
                            <li>{switch_ticker.ticker_row.ELEMENT}</li>
                            <!-- END ticker_row -->
                        </ul>
                    </div>
                </div>
            </div>
            <!-- END switch_ticker_new -->
            
            <!-- BEGIN switch_ticker -->
            <div id="fa_ticker_block" style="margin-top:4px;">
                <div class="module">
                    <div id="fa_ticker_container">
                        <div id="fa_ticker" style="height:{switch_ticker.HEIGHT}px;">
                            <div class="fa_ticker_content">
                                <!-- BEGIN ticker_row -->
                                <div>{switch_ticker.ticker_row.ELEMENT}</div>
                                <!-- END ticker_row -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END switch_ticker -->
            <!-- End announcements carousel -->
        </div>
        <!-- End header -->
      
      
       <!----------------------------------------------->
       <!-- FORUM CONTENTS -------------->
       
        <div id="page-body">

            <div id="{ID_CONTENT_CONTAINER}" {CLASS_CONTENT_CONTAINER}>
                <div id="outer-wrapper">
                    <div id="wrapper">
                        <div id="container">
                            <div id="content">

                                <div id="main">
                                    <div id="main-content">

            