<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="index" lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=1024">

<link rel="stylesheet"
	href="//t1.daumcdn.net/kakaomapweb/map/202103111401750/app_A.css">
<link rel="stylesheet"
	href="//t1.daumcdn.net/kakaomapweb/map/202103111401750/app_B.css">
<link rel="stylesheet"
	href="//t1.daumcdn.net/kakaomapweb/map/202103111401750/app_C.css">
<link rel="stylesheet"
	href="//t1.daumcdn.net/kakaomapweb/map/202103111401750/app_D.css">
<link rel="stylesheet"
	href="//t1.daumcdn.net/kakaomapweb/map/202103111401750/canvas_roadview.css">

<link rel="stylesheet"
	href="https://t1.daumcdn.net/kakaomapweb/subway/linemap/canvas/prod/css/subway.css">

<link rel="icon" type="image/x-icon" href="/favicon.ico">

<title>카카오맵</title>
<script type="text/javascript">
	document.domain = location.host.indexOf('kakao.com') != -1 ? 'kakao.com'
			: 'daum.net';

	if (false === true
			&& (false === false || $needAgreements)
			&& document.referrer.split('?')[0] === "https://accounts.kakao.com/login/kakaomap?continue="
					.split('?')[0]) {
		window.location.href = window.location.origin + '/user/signup';
	}
</script>





<meta property="og:site_name" content="카카오맵">
<meta property="og:title" content="카카오맵">
<meta property="og:description" content="당신을 좋은 곳으로 안내 할 지도">
<meta property="og:type" content="websit">
<meta property="og:image"
	content="//t1.daumcdn.net/localimg/localimages/07/common/ogtag.png">

<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="카카오맵">
<meta name="twitter:description" content="당신을 좋은 곳으로 안내 할 지도">
<meta name="twitter:image"
	content="//t1.daumcdn.net/localimg/localimages/07/common/ogtag.png">

<meta name="description" content="당신을 좋은 곳으로 안내 할 지도">
<link rel="search" type="application/opensearchdescription+xml"
	href="/OpenSearch.xml" title="카카오맵">
<style>/* reset */
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code,
	form, fieldset, legend, textarea, p, blockquote, th, td, input, select,
	button {
	margin: 0;
	padding: 0
}

fieldset, img {
	border: 0 none
}

dl, ul, ol, menu, li {
	list-style: none
}

blockquote, q {
	quotes: none
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none
}

input, select, textarea, button {
	vertical-align: middle
}

input::-ms-clear {
	display: none
}

button {
	border: 0 none;
	background-color: transparent;
	cursor: pointer
}

body {
	background: #fff
}

body, th, td, input, select, textarea, button {
	font-size: 12px;
	line-height: 1.5;
	font-family: AppleSDGothicNeo-Regular, 'Malgun Gothic', '맑은 고딕', dotum,
		'돋움', sans-serif;
	color: #222
}

a {
	color: #333;
	text-decoration: none
}

a:active, a:hover {
	text-decoration: underline
}

a:active {
	background-color: transparent
}

address, caption, cite, code, dfn, em, var {
	font-style: normal;
	font-weight: normal
}

/* global */
.screen_out {
	overflow: hidden;
	position: absolute;
	width: 0;
	height: 0;
	line-height: 0;
	text-indent: -9999px
}

.show {
	display: block
}

.hide {
	display: none
}

/* PC Social Share */
/* 2018-04-25 수정 시작 */
.social_comm_p {
	position: absolute;
	z-index: 1000;
}

.social_comm_p .img_social {
	display: block;
	overflow: hidden;
	font-size: 0;
	background:
		url(//t1.daumcdn.net/daumtop_deco/images/common/social/img_social_180425.png)
		no-repeat 0 0;
	text-indent: -9999px
}

.social_comm_p .sns_comm_p {
	overflow: hidden;
	position: relative;
	border: 1px solid #e2e2e2;
	font-size: 12px;
	color: #222;
	background-color: #fff;
	letter-spacing: -0.025em
}

.social_comm_p .sns_comm_p .btn_close {
	position: absolute;
	top: 7px;
	right: 7px;
	width: 24px;
	height: 24px
}

.social_comm_p .sns_comm_p .ico_close {
	width: 14px;
	height: 14px;
	margin: 5px;
	background-position: -150px 0
}

.social_comm_p .share_layer {
	position: relative;
	width: 289px;
	min-height: 253px
}

.social_comm_p .list_sns {
	overflow: hidden;
	margin: 29px 15px 0
}

.social_comm_p .list_sns li {
	float: left;
	width: 86px;
	height: 86px
}

.social_comm_p .list_sns .link_sns {
	display: block;
	text-align: center;
	text-decoration: none
}

.social_comm_p .list_sns .link_sns .img_social {
	width: 48px;
	height: 48px;
	margin: 0 auto
}

.social_comm_p .list_sns .tit_sns {
	display: block;
	margin-top: 7px;
	font-weight: normal;
	line-height: 16px
}

.social_comm_p .list_sns .ico_sns_ks {
	background-position: 0 0
}

.social_comm_p .list_sns .ico_sns_fb {
	background-position: -50px 0
}

.social_comm_p .list_sns .ico_sns_tw {
	background-position: -100px 0
}

.social_comm_p .list_sns .ico_sns_cafe {
	background-position: 0 -50px
}

.social_comm_p .list_sns .ico_sns_mail {
	background-position: -50px -50px
}

.social_comm_p .list_sns .ico_sns_kt {
	background-position: 0 -100px
}

.social_comm_p .sns_copyurl {
	margin: 1px 29px
}

.social_comm_p .sns_copyurl .link_copyurl {
	display: block;
	overflow: hidden;
	position: relative;
	height: 25px;
	line-height: 25px;
	border: 1px solid #d0d0d0;
	background-color: #f8f8f8;
	text-decoration: none
}

.social_comm_p .sns_copyurl .txt_url {
	display: block;
	overflow: hidden;
	padding: 0 60px 0 10px;
	color: #2695f8;
	white-space: nowrap;
	text-overflow: ellipsis
}

.social_comm_p .sns_copyurl .txt_copy {
	position: absolute;
	top: 0;
	right: 0;
	width: 53px;
	height: 25px;
	border-left: 1px solid #d0d0d0;
	background-color: #fff;
	text-align: center
}

.social_comm_p .copyurl_layer {
	width: 254px;
	height: 78px;
	text-align: center
}

.social_comm_p .inner_copyurl {
	display: table;
	width: 100%;
	height: 100%
}

.social_comm_p .inner_copyurl .desc_copyurl {
	display: table-cell;
	padding: 18px 0 17px;
	line-height: 19px;
	vertical-align: middle
}

.social_comm_p .sns_copyurl_type2 .tf_url {
	display: block;
	width: 210px;
	height: 25px;
	padding: 0 10px;
	border: 0 none;
	color: #2695f8;
	background-color: transparent
}

.social_comm_p .sns_copyurl_type2 .desc_tip {
	padding: 13px 0;
	line-height: 18px;
	color: #888;
	text-align: center;
	letter-spacing: 0
}

@media only screen and (-webkit-min-device-pixel-ratio: 1.5) , only screen and
		(min-device-pixel-ratio: 1.5) , only screen and (min-resolution:
		144dpi) , only screen and (min-resolution: 1.5dppx) {
	.social_comm_p .img_social {
		background-image:
			url(//t1.daumcdn.net/daumtop_deco/images/common/social/rtn/img_social_180425.png);
		background-size: 170px 160px
	}
}
</style>
<style></style>
<style type="text/css">
.kakao-video-ad {
	background-color: transparent;
	text-align: center;
	padding: 0;
	margin: 0;
	font-family: HelveticaNeue-Light, AppleSDGothicNeo-Light, Malgun Gothic,
		"\B9D1\C740   \ACE0\B515", sans-serif
}

.kakao-video-ad .header {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	z-index: 10;
	height: 60px;
	background: -moz-linear-gradient(top, rgba(0, 0, 0, .3) 0, transparent
		100%);
	background: -webkit-linear-gradient(top, rgba(0, 0, 0, .3), transparent);
	background: linear-gradient(180deg, rgba(0, 0, 0, .3) 0, transparent);
	transition: opacity 1s
}

.kakao-video-ad .header .link_ad {
	display: block;
	overflow: hidden;
	padding: 12px 12px 12px 11px;
	font-size: 15px;
	color: #fff;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .12);
	text-decoration: none
}

.kakao-video-ad .header .link_ad .txtdetail_ad {
	float: left;
	overflow: hidden;
	max-width: calc(100% - 98px);
	margin-top: 6px;
	font-weight: 600;
	letter-spacing: 0;
	white-space: nowrap;
	text-rendering: auto;
	text-overflow: ellipsis;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, .24);
	text-align: left
}

.kakao-video-ad .header .link_ad .ico_ad {
	float: left;
	overflow: hidden;
	width: 27px;
	height: 16px;
	margin: -1px 5px 0 0;
	vertical-align: top;
	background:
		url(https://t1.daumcdn.net/biz/ui/adplayer/m320/ico_adplayer_171026_v2.png)
		no-repeat -70px 0;
	text-indent: -9999px
}

.kakao-video-ad .header .link_ad .txt_go {
	float: right;
	height: 26px;
	border-radius: 2px;
	font-weight: 500;
	font-size: 13px;
	line-height: 27px;
	background-color: rgba(0, 0, 0, .6);
	text-align: center;
	padding-left: 10px;
	padding-right: 10px;
	letter-spacing: -1px
}

.kakao-video-ad .header .link_ad .txt_go:after {
	display: inline-block;
	width: 7px;
	height: 11px;
	margin: 8px 0 0 4px;
	background:
		url(https://t1.daumcdn.net/biz/ui/adplayer/m320/ico_adplayer2_180308.png)
		no-repeat -150px -20px;
	vertical-align: top;
	content: ""
}

.kakao-video-ad {
	display: block;
	overflow: hidden;
	max-height: 319.5px;
	width: 100%;
	height: 0;
	padding-top: 56.25%;
	vertical-align: top;
	box-sizing: border-box;
	color: #fff;
	background-color: #000;
	position: relative;
	font-size: 10px;
	line-height: 1;
	font-weight: 400;
	font-style: normal;
	font-family: HelveticaNeue, Helvetica, roboto, sans-serif
}

.kakao-video-ad * {
	box-sizing: inherit
}

.kakao-video-ad video {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%
}

.kakao-video-ad button {
	background: none;
	border: none;
	color: inherit;
	display: inline-block;
	overflow: visible;
	font-size: inherit;
	line-height: inherit;
	text-transform: none;
	text-decoration: none;
	transition: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none
}

.kakao-video-ad .loading-spinner {
	display: none;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -25px 0 0 -25px;
	opacity: .85;
	text-align: left;
	border: 6px solid rgba(43, 51, 63, .7);
	box-sizing: border-box;
	background-clip: padding-box;
	width: 50px;
	height: 50px;
	border-radius: 25px
}

.kakao-video-ad .loading-spinner:after, .kakao-video-ad .loading-spinner:before
	{
	content: "";
	position: absolute;
	margin: -6px;
	box-sizing: inherit;
	width: inherit;
	height: inherit;
	border-radius: inherit;
	opacity: 1;
	border: inherit;
	border-color: transparent;
	border-top-color: #fff
}

.kakao-video-ad.loadstart .loading-spinner:after, .kakao-video-ad.loadstart .loading-spinner:before
	{
	-webkit-animation: vjs-spinner-spin 1.1s cubic-bezier(.6, .2, 0, .8)
		infinite, vjs-spinner-fade 1.1s linear infinite;
	animation: vjs-spinner-spin 1.1s cubic-bezier(.6, .2, 0, .8) infinite,
		vjs-spinner-fade 1.1s linear infinite
}

.kakao-video-ad.loadstart .loading-spinner {
	display: block
}

.kakao-video-ad.loadstart.error .loading-spinner {
	display: none
}

.kakao-video-ad .link-load {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	color: #fff;
	text-decoration: none;
	visibility: visible
}

.kakao-video-ad .link-load.vod_replay:after {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, .3);
	content: ""
}

.kakao-video-ad .load {
	position: absolute;
	left: 50%;
	top: 50%;
	z-index: 1;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%)
}

.kakao-video-ad.loaded-data .load .ico_load {
	display: block;
	overflow: hidden;
	width: 40px;
	height: 40px;
	margin: 0 auto;
	background:
		url(https://t1.daumcdn.net/biz/ui/adplayer/m320/ico_adplayer2_180308.png)
		no-repeat 0 0;
	text-indent: -9999px;
	transition: opacity 1s
}

.kakao-video-ad.has-started.playing .load .ico_load {
	opacity: 0;
	background-position: -40px 0
}

.kakao-video-ad.has-started.playing.show-buttons .load .ico_load {
	opacity: 1;
	transition: opacity 1s;
	background-position: -40px 0
}

.kakao-video-ad.has-started.show-buttons.playing.paused.ended .link-load
	{
	display: inline-block
}

.kakao-video-ad.has-started.show-buttons.playing.paused.ended .load .ico_load
	{
	opacity: 1;
	background-position: -80px 0
}

.kakao-video-ad.has-started.show-buttons.playing.paused .load .ico_load
	{
	opacity: 1;
	background-position: 0 0
}

.load .txt_time {
	overflow: hidden;
	position: absolute;
	width: 0;
	height: 0;
	line-height: 0;
	text-indent: -9999px
}

.kakao-video-ad .poster {
	display: inline-block;
	vertical-align: middle;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	background-size: contain;
	background-color: #000;
	cursor: pointer;
	margin: 0;
	padding: 0;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	height: 100%;
	opacity: 0;
	transition: opacity 1s
}

.kakao-video-ad .poster img {
	display: block;
	vertical-align: middle;
	margin: 0 auto;
	max-height: 100%;
	padding: 0;
	width: 100%
}

.kakao-video-ad.has-started .poster {
	opacity: 0
}

.kakao-video-ad .control-bar {
	position: absolute;
	width: 100%;
	height: 60px;
	left: 0;
	right: 0;
	bottom: 0;
	font-size: 0;
	visibility: visible;
	opacity: 1;
	text-align: right;
	background: -moz-linear-gradient(top, transparent 10%, rgba(0, 0, 0, .3)
		100%);
	background: -webkit-linear-gradient(top, transparent 10%, rgba(0, 0, 0, .3));
	background: linear-gradient(180deg, transparent 10%, rgba(0, 0, 0, .3));
	transition: opacity 1s
}

.kakao-video-ad .time-control {
	display: inline-block;
	width: auto;
	height: auto;
	margin: 31px 12px 0 0;
	vertical-align: top;
	opacity: 0;
	transition: opacity 1s;
	letter-spacing: 0
}

.kakao-video-ad.has-started .time-control {
	opacity: 1
}

.kakao-video-ad .control-text {
	border: 0;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	margin: -1px;
	overflow: hidden;
	padding: 0;
	position: absolute;
	width: 1px
}

.kakao-video-ad .time-control em {
	font-size: 12px;
	font-style: normal;
	color: #fff;
	font-weight: 600;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .24)
}

.kakao-video-ad .control-bar a {
	background: none;
	border: none;
	color: inherit;
	display: inline-block;
	overflow: visible;
	font-size: inherit;
	line-height: inherit;
	text-transform: none;
	text-decoration: none;
	transition: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none
}

.kakao-video-ad .control-bar .btn_option {
	display: inline-block;
	position: relative;
	width: 41px;
	height: 41px;
	margin: 19px 0 0 -12px;
	padding: 0;
	cursor: pointer;
	-webkit-box-flex: unset;
	-moz-box-flex: unset;
	-webkit-flex: none;
	-ms-box-flex: none;
	flex: none;
	outline: none;
	opacity: 1
}

.kakao-video-ad .control-bar .btn_option:before {
	position: absolute;
	left: 8px;
	top: 15px;
	width: 22px;
	height: 7px;
	background:
		url(https://t1.daumcdn.net/biz/ui/adplayer/m320/ico_adplayer2_180308.png)
		no-repeat -150px 0;
	content: ""
}

.kakao-video-ad .link_sound {
	position: absolute;
	bottom: 9px;
	left: 7px;
	z-index: 10;
	height: 27px;
	padding: 5px;
	font-size: 12px;
	line-height: 17px;
	text-decoration: none;
	opacity: 0;
	transition: opacity 1s
}

.kakao-video-ad .link_sound .ico_sound {
	display: inline-block;
	overflow: hidden;
	width: 22px;
	height: 17px;
	font-size: 1px;
	line-height: 0;
	color: transparent;
	background:
		url(https://t1.daumcdn.net/biz/ui/adplayer/m320/ico_adplayer2_180308.png)
		no-repeat -120px 0;
	vertical-align: top
}

.kakao-video-ad .link_sound.sound_off .ico_sound {
	background-position: -120px -20px
}

.kakao-video-ad .link_sound .txt_nosound {
	padding-left: 7px;
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, .24)
}

.kakao-video-ad.loaded-data .link_sound {
	opacity: 1
}

.kakao-video-ad .progress-control {
	position: absolute;
	width: 100%;
	bottom: 0;
	left: 0;
	height: 2px;
	-webkit-box-flex: initial;
	-moz-box-flex: initial;
	-webkit-flex: auto;
	-ms-flex: auto;
	flex: auto;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center
}

.kakao-video-ad .progress-holder {
	-webkit-box-flex: initial;
	-moz-box-flex: initial;
	-webkit-flex: auto;
	-ms-flex: auto;
	flex: auto;
	-webkit-transition: all .2s;
	-moz-transition: all .2s;
	-o-transition: all .2s;
	transition: all .2s;
	height: 2px
}

.kakao-video-ad .progress-holder .load-progress, .kakao-video-ad .progress-holder .load-progress div,
	.kakao-video-ad .progress-holder .play-progress {
	position: absolute;
	display: block;
	height: 100%;
	margin: 0;
	padding: 0;
	width: 0;
	left: 0;
	top: 0
}

.kakao-video-ad .play-progress {
	background-color: #4dbefa
}

.kakao-video-ad .play-progress:before {
	position: absolute;
	top: -8px;
	right: -8px;
	width: 16px;
	height: 10px
}

.kakao-video-ad .progress-control:hover .play-progress:before {
	transform: scale(1)
}

.kakao-video-ad .slider {
	outline: 0;
	position: relative;
	cursor: pointer;
	width: 100%;
	padding: 0;
	margin: 0;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-color: hsla(0, 0%, 100%, .4)
}

.kakao-video-ad .load-progress {
	background: #bfc7d3;
	background: rgba(115, 133, 159, .5)
}

.kakao-video-ad .load-progress div {
	background: hsla(0, 0%, 100%, .7)
}

.kakao-video-ad .option_layer {
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .5);
	visibility: hidden;
	opacity: 0;
	transition: opacity .5s
}

.kakao-video-ad.can-optout .option_layer {
	visibility: visible;
	z-index: 400;
	opacity: 1;
	transition: opacity .5s
}

.kakao-video-ad .option_layer .info_auto {
	display: table;
	width: 100%;
	height: 100%
}

.kakao-video-ad .option_layer .info_auto .inner_auto {
	display: table-cell;
	vertical-align: middle
}

.kakao-video-ad .option_layer .info_auto .desc_auto {
	position: relative;
	margin: 0;
	padding: 0 10px 57px;
	font-size: 14px;
	line-height: 20px;
	color: #fff;
	text-align: center;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .12);
	word-break: keep-all
}

.kakao-video-ad .option_layer .info_auto .btn_auto {
	position: absolute;
	left: 50%;
	bottom: -2px;
	width: 110px;
	height: 40px;
	margin-left: -55px;
	border-radius: 2px;
	font-size: 14px;
	color: #fff;
	background-color: #9a9a9a;
	text-align: center;
	cursor: pointer;
	border: 0;
	-webkit-box-flex: unset;
	-moz-box-flex: unset;
	-webkit-flex: none;
	-ms-box-flex: none;
	flex: none;
	outline: none
}

.kakao-video-ad .option_layer .info_auto .btn_on {
	background-color: #43bbfb
}

.kakao-video-ad .option_layer .desc_info {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	margin: 0;
	padding-bottom: 10px;
	font-size: 9px;
	color: #bbb;
	letter-spacing: -.01em;
	text-align: center
}

.kakao-video-ad .option_layer .btn_close {
	position: absolute;
	right: 10px;
	top: 12px;
	width: 30px;
	height: 30px;
	padding: 7px;
	cursor: pointer;
	border: 0;
	background-color: transparent;
	-webkit-box-flex: unset;
	-moz-box-flex: unset;
	-webkit-flex: none;
	-ms-box-flex: none;
	flex: none;
	outline: none
}

.kakao-video-ad .option_layer .btn_close:before {
	position: absolute;
	left: 7px;
	top: 7px;
	width: 16px;
	height: 16px;
	background:
		url(https://t1.daumcdn.net/biz/ui/adplayer/m320/ico_adplayer2_180308.png)
		no-repeat -120px -40px;
	content: ""
}

.kakao-video-ad .option_layer .active_on.btn_close:before {
	background-position: -120px -60px
}

.kakao-video-ad.can-optout .control-bar, .kakao-video-ad.can-optout .header,
	.kakao-video-ad.can-optout .link-load, .kakao-video-ad.can-optout .link_sound
	{
	opacity: 0;
	transition: opacity .5s
}

.kakao-video-ad.show-buttons .link-load, .kakao-video-ad.show-poster .link-load,
	.kakao-video-ad.show-poster .poster {
	display: inline-block;
	opacity: 1
}

@media only screen and (-webkit-min-device-pixel-ratio:1.5) , only screen and
		(min-device-pixel-ratio:1.5) , only screen and
	(min-resolution:1.5dppx) {
	.kakao-video-ad .control-bar .btn_option:before, .kakao-video-ad .header .link_ad .txt_go:after,
		.kakao-video-ad .link_sound .ico_sound, .kakao-video-ad.loaded-data .load .ico_load,
		.kakao-video-ad .option_layer .btn_close:before {
		background-image:
			url(https://t1.daumcdn.net/biz/ui/adplayer/m640/ico_adplayer2_180308.png);
		background-size: 180px 80px
	}
}
</style>
</head>
<body class="MAP NOTOUCH FIXIE collapse">
	<div id="daumIndex">
		<a href="#localInfo">본문 바로가기</a> <a href="#info">메뉴 바로가기</a>
	</div>

	<div class="IE6MIN">
		<div id="header" class="Header" role="banner">
			<h1 class="Title">
				<a id="local" class="local"
					href="?nil_profile=title&amp;nil_src=local">kakaomap</a>
			</h1>
			<button type="button" class="btn_menu">더보기 메뉴 열기</button>

			<strong class="screen_out">검색</strong>
			<div id="search" class="Search">
				<form id="search.keyword" class="KeywordSearch"
					onsubmit="window.QUERY=this.elements[0].value;return false">
					<fieldset class="fld_inside">
						<legend class="screen_out">검색어 입력폼</legend>
						<h2 class="screen_out">
							<label for="search.keyword.query">지도 검색</label>
						</h2>
						<div class="box_searchbar">
							<input type="text" id="search.keyword.query" name="q"
								class="query tf_keyword bg_on" maxlength="100"
								autocomplete="off" accesskey="s">
							<button type="button" id="search.keyword.submit"
								class="go ico_search btn_search">검색</button>
						</div>
						<div class="choice_currentmap">
							<input type="checkbox" id="boundscheck" class="screen_out">
							<label id="search.keyword.bounds" for="boundscheck"
								class="lab_currentmap INACTIVE"><span
								id="search.keyword.currentmap" class="ico_currentmap"></span>현
								지도 내 장소검색</label>
						</div>
						<blockquote id="search.keyword.querySuggest" class="suggest">
							<div class="suggestBox box_sub" style="display: none;">
								<div class="baseBox bg">
									<div class="list">
										<ul class="suggest_list_target"></ul>
									</div>
								</div>
								<div class="favorite_find HIDDEN"></div>
								<div class="search_recent recent_none">
									<em class="tit_recent">히스토리가 없어요.</em>
									<ul data-id="wrap" class="list_recent"></ul>
									<div class="favorite_recent">
										<button data-id="disabled" type="button" class="btn_recentoff">히스토리
											끄기</button>
										<button data-id="clear" type="button"
											class="btn_deleteall HIDDEN">전체삭제</button>
									</div>
								</div>
							</div>
						</blockquote>
					</fieldset>
				</form>
			</div>
		</div>
	</div>

	<h2 class="tit_login">
		<a href="#" target="_top" id="btnLogin">로그인</a>
	</h2>
	<h2 class="tit_profile PROFILE-IMG  HIDDEN" id="btnProfile">
		<a href="#none"> <img src="" width="36" height="36"
			class="img_profile HIDDEN" alt="프로필" id="exifviewer-img-1"
			exifid="196919547">
		</a>
	</h2>
	<div class="dimmed_snb">
		<div class="snb_map" role="navigation">
			<h2 class="img_snb tit_snb">
				kakaomap <span class="screen_out">더보기 메뉴</span>
			</h2>
			<a data-log="notice" href="http://kakaomap.tistory.com"
				target="_blank" class="link_snb link_notice"><span
				class="img_snb"></span>공지사항</a> <a data-log="event"
				href="http://kakaomap.tistory.com/category/알립니다/이벤트" target="_blank"
				class="link_snb link_event"><span class="img_snb"></span>이벤트</a>

			<div class="wrap_get HIDDEN" id="migrationMenus">
				<ul class="list_get">
					<li id="unmigrationMenu" class="HIDDEN"><a href="/user/signup"
						target="_blank" class="link_getdaum">다음지도 즐겨찾기 가져오기</a></li>
					<li id="placeMigrationMenu" class="HIDDEN"><a
						href="/p/place/migration" target="_blank" class="link_getplace">카카오플레이스
							데이터 가져오기</a></li>
				</ul>
			</div>
			<ul class="list_service" id="mapMenus">
				<li><a class="xc item_service" href="#none"
					data-channel="SIDEBAR_NEWPLACE">신규장소 등록</a></li>
				<li><a class="xb" href="#none" data-channel="SIDEBAR_MODIFYMAP">지도정보
						수정</a></li>
				<li><a data-log="cs"
					href="https://cs.kakao.com/helps?locale=ko&amp;service=101"
					target="_blank">고객센터</a></li>
				<li class="options"><a href="#none" target="_blank">설정<span
						class="img_snb ico_arr">열기/닫기</span></a>
					<ul class="list_option">
						<li><a href="http://www.kakao.com/ko/terms" target="_blank">서비스
								이용약관</a></li>
						<li><a href="http://www.kakao.com/ko/location"
							target="_blank">위치기반 서비스 이용약관</a></li>
						<li><a href="http://www.kakao.com/ko/privacy" target="_blank">개인정보
								처리방침</a></li>
						<li><a href="http://kakaomap.tistory.com/68" target="_blank">법적공지
								및 정보 제공처</a></li>
						<li><a href="http://www.kakao.com/ko/operation"
							target="_blank">운영정책</a></li>
						<li class="HIDDEN"><a class="xd"
							data-log="setting|unregister" href="#none" target="_blank">서비스
								탈퇴</a></li>
					</ul></li>
			</ul>
			<ul class="list_info">
				<li><a data-log="openapi" href="https://apis.map.daum.net"
					target="_blank">지도 오픈 API</a></li>
				<li><a data-log="searchregister"
					href="https://register.search.daum.net/index.daum" target="_blank">지도
						검색등록</a></li>
				<li><a data-log="localbiz"
					href="http://local.biz.daum.net/rainbow_core/ols/index.local"
					target="_blank">광고신청</a></li>
			</ul>
			<button type="button" class="img_snb btn_close">더보기 메뉴 닫기</button>
		</div>
	</div>

	<!-- 즐찾, 리뷰 다른사람 페이지 (좌측을 덮어버리는 ui라 #info.body에 넣을 수 없어 빼놓음)-->
	<div id="info.other" class="FavoriteOther HIDDEN">
		<div data-id="header" class="header"></div>
		<!-- 2018-09-04 높이값 조절 -->
		<div data-id="body" class="body">
			<div id="other.favorite" class="favorite_result">
				<h3 class="screen_out">즐겨찾기</h3>

				<!-- 상단에 FavoriteDetailSummary가 오는 상세 빈페이지에는 FavoriteEmptyDetail 부여 -->
				<div data-id="listNone" class="FavoriteEmptyPage HIDDEN">
					<p class="desc_empty">공개된 폴더가 없습니다.</p>
				</div>



				<ul data-id="list" class="list_body"></ul>

				<div id="info.other.favorite.page" data-id="pagination"
					class="pages HIDDEN">
					<div class="pageWrap">
						<button type="button" id="info.other.favorite.page.prev"
							class="prev disabled">이전</button>
						<a id="info.other.favorite.page.no1" class="INACTIVE" href="#">1</a>
						<a id="info.other.favorite.page.no2" class="INACTIVE" href="#">2</a>
						<a id="info.other.favorite.page.no3" class="INACTIVE" href="#">3</a>
						<a id="info.other.favorite.page.no4" class="INACTIVE" href="#">4</a>
						<a id="info.other.favorite.page.no5" class="INACTIVE" href="#">5</a>
						<button type="button" id="info.other.favorite.page.next"
							class="next">다음</button>
					</div>
				</div>
			</div>
			<div id="other.review" class="favorite_evaluation HIDDEN">
				<h3 class="screen_out">평가</h3>
				<div>
					<div data-id="reviewEmptyPage" class="FavoriteEmptyPage HIDDEN">
						<p class="desc_empty">작성한 평가가 없습니다.</p>
					</div>
				</div>
				<ul data-id="reviewList" class="list_body"></ul>
				<div id="other.review.page" class="pages HIDDEN">
					<div class="pageWrap">
						<button type="button" id="other.review.page.prev"
							class="prev disabled">이전</button>
						<a id="other.review.page.no1" class="ACTIVE" href="#">1</a> <a
							id="other.review.page.no2" class="INACTIVE" href="#">2</a> <a
							id="other.review.page.no3" class="INACTIVE" href="#">3</a> <a
							id="other.review.page.no4" class="INACTIVE" href="#">4</a> <a
							id="other.review.page.no5" class="INACTIVE" href="#">5</a>
						<button type="button" id="other.review.page.next" class="next">다음</button>
					</div>
				</div>
			</div>
		</div>
		<div data-id="toolbar" class="FavoriteFunctionToolBar HIDDEN">
			<button type="button" data-id="share" class="btn_share">
				<span class="ico_function ico_share"></span>공유하기
			</button>
			<button type="button" data-id="info" class="btn_info">폴더 정보</button>
			<button type="button" data-id="subscribe" class="btn_edit">
				<span class="ico_function ico_edit"></span>구독하기
			</button>
		</div>
		<div data-id="footer" class="Footer">
			<a class="xa" target="_blank"
				href="https://cs.kakao.com/helps?locale=ko&amp;service=101">고객센터</a>
			<span>|</span> <a class="xb" href="#none" data-pos="footer"
				data-channel="SEARCH_BOTTOM_MODIFYMAP">지도 정보 수정</a> <span>|</span> <a
				class="xc" href="#none" data-pos="footer"
				data-channel="SEARCH_BOTTOM_NEWPLACE">신규 장소 등록</a>
		</div>
	</div>

	<div id="info" class="Info">
		<div id="info.header" class="header">
			<div id="info.header.main" class="main">
				<div role="navigation">
					<h2 class="screen_out">검색 메뉴</h2>
					<ul class="menu">
						<li id="search.tab1" class="keyword keyword-ACTIVE"><a
							href="#" class="mainmenutab" title="검색">검색</a></li>
						<li id="search.tab2" class="carRoute carRoute-INACTIVE"><a
							href="#" class="mainmenutab" title="길찾기">길찾기</a></li>
						<li id="search.tab3" class="transitRoute transitRoute-INACTIVE">
							<a href="#" class="mainmenutab" title="버스">버스</a>
						</li>
						<li id="search.tab4" class="subwayRoute subwayRoute-INACTIVE">
							<a href="#" class="mainmenutab" title="지하철">지하철</a>
						</li>
						<li id="search.tab5" class="favorite favorite-INACTIVE"><a
							href="#" class="mainmenutab" title="즐겨찾기">MY</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div id="info.body" class="body" style="height: 360px;">
			<div id="info.main" class="Main INFOLEFT">
				<div id="info.main.home" class="home">
					<div id="info.location" class="theme">
						<div class="reportError">
							<h3 class="screen_out">현재위치</h3>
							<span id="info.location.approxAddr" class="approxAddr">수원시
								영통구 매탄4동</span>
							<div id="info.location.weather" class="infoAir">
								<strong class="screen_out">날씨정보</strong> <span class="txt_air">구름조금</span>
								<span class="temper">13˚</span> <span class="txt_change">어제보다
									2℃ 높아요</span> <span class="txt_bar"></span> <span class="txt_dust">미세<span
									data-id="dust_state" class="txt_state density3">나쁨</span></span> <span
									class="txt_dust">초미세<span data-id="micro_dust_state"
									class="txt_state density4">매우나쁨</span></span>
							</div>
							<a id="info.location.reportError" href="iptargeting/form"
								class="reportbug">오류신고</a>
						</div>
					</div>
					<div id="info.main.famous" class="famous"></div>
					<div id="info.main.around" class="infoAround">
						<h3 class="tit_around">주변 탐색</h3>
						<ul class="list_around">
							<li><button type="button" class="btn_around">
									<span class="ico_food"></span><span class="txt_around">음식점</span>
								</button></li>
							<li><button type="button" class="btn_around">
									<span class="ico_cafe"></span><span class="txt_around">카페</span>
								</button></li>
							<li><button type="button" class="btn_around">
									<span class="ico_bus"></span><span class="txt_around">버스</span>
								</button></li>
							<li><button type="button" class="btn_around">
									<span class="ico_sub"></span><span class="txt_around">지하철</span>
								</button></li>
							<li><button type="button" class="btn_around">
									<span class="ico_hotel"></span><span class="txt_around">숙박</span>
								</button></li>
							<li><button type="button" class="btn_around">
									<span class="ico_bank"></span><span class="txt_around">은행</span>
								</button></li>
							<li><button type="button" class="btn_around">
									<span class="ico_cvs"></span><span class="txt_around">편의점</span>
								</button></li>
						</ul>
					</div>
					<div id="info.main.favorite" class="regfav">
						<div class="favorite_exposed">
							<h3 class="tit_favorite tit_myfavorite">
								<a data-id="more" href="#none" class="link_myfavorite">즐겨찾기</a>
								<!-- 2018-12-17_v2 추가 : 즐겨찾기 링크(a.link_favorite)추가 -->
							</h3>
							<ul data-id="list" class="list_registerated">
								<li class="">
									<div class="favorite_registerated">
										<a href="#" data-id="link" class="link_registerated "> <span
											class="ico_pin ico_home"></span> <span class="txt_personal">집
												주소를 등록하세요.</span>
										</a>
									</div>
								</li>
								<li class="">
									<div class="favorite_registerated">
										<a href="#" data-id="link" class="link_registerated "> <span
											class="ico_pin ico_myjob"></span> <span class="txt_personal">회사
												주소를 등록하세요.</span>
										</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div id="info.main.newplace" class="newplace">
						<div class="newPlace">
							<h6 class="tit_newplace">새로운 장소</h6>
							<p class="desc_newplace">
								새로운 수정된 장소를 알고 계세요?<br>장소 제보는 지도 품질 향상에 큰 도움이 됩니다.
							</p>
							<a href="#none" class="xc link_newplace link_suggest"
								data-pos="left" data-channel="SEARCH_MIDDLE_NEWPLACE">신규 장소
								등록</a> <a href="#none" class="xb link_newplace link_modify"
								data-pos="left" data-channel="SEARCH_MIDDLE_MODIFYMAP">지도 정보
								수정</a>
						</div>
					</div>
				</div>

				<div id="info.main.header" class="mainHeader HIDDEN">
					<ul id="info.main.options" class="sub">
						<li class="option0 option0-ACTIVE"><a href="#">전체</a></li>
						<li class="option1"><a href="#">장소</a></li>
						<li class="option2"><a href="#">주소</a></li>
						<li class="option3"><a href="#">버스</a></li>
						<li class="option4"><a href="#">정류장</a></li>
					</ul>
					<a href="#none" id="info.main.header.clear" class="clear"
						title="모두 지우기">모두 지우기</a>
					<div id="info.main.header.activeOption" class="screen_out"></div>
				</div>

				<div id="info.related.keyword" class="relatedKeyword HIDDEN">
					<span class="ico">관련검색어</span>
					<div class="frameKeywords">
						<p class="wrapKeywords"></p>
					</div>
					<div class="more closed HIDDEN">
						<a href="#">더보기</a><span class="ico"></span>
					</div>
					<div class="more opened HIDDEN">
						<a href="#">접기</a><span class="ico"></span>
					</div>
				</div>
				<div id="info.searchHeader" class="searchHeader HIDDEN">
					<div id="info.search.boundsTitle" class="HIDDEN">
						<p class="desc_search">
							현재 지도 내 <em id="info.search.boundsTitle.text"></em> 검색결과
						</p>
					</div>
					<div id="info.search.correction" class="correction HIDDEN">
						<div class="correctionTop">
							<p class="desc_search">
								<em id="info.search.correction.orig"></em>에서 <em
									id="info.search.correction.new"></em>으로 검색한 결과
							</p>
						</div>
						<p class="correctionBottom">
							<a href="#" id="info.search.correction.goorig"
								class="link_search">입력한 '<span
								id="info.search.correction.orig2"></span>'(으)로 재검색 <span
								class="ico_arr"></span></a>
						</p>
						<p id="info.search.correction.error" class="desc_error HIDDEN"></p>
						<p></p>
					</div>
					<div id="info.searchHeader.message" class="message HIDDEN"></div>
					<div id="info.searchHeader.banner" class="keywordBanner HIDDEN">
						<a href="#" class="banner"></a>
					</div>
					<div id="info.searchHeader.postCodeMessage"
						class="postCodeMessage HIDDEN">
						<a href="#none" class="link_search">우편번호 검색<span
							class="ico_arr"></span></a>
					</div>
					<div id="info.searchHeader.spellcheck" class="spellcheck HIDDEN">
						<div id="info.searchHeader.spellcheck.titleresult"
							class="desc_search HIDDEN">
							<em id="info.searchHeader.spellcheck.title"></em> 검색결과
						</div>
						<p>
							<a href="#" class="link_search"
								id="info.searchHeader.spellcheck.candidate">'<span
								id="info.searchHeader.spellcheck.text"></span>'(으)로 재검색 <span
								class="ico_arr"></span></a>
						</p>
					</div>
				</div>
				<div id="info.noPlace" class="noPlace HIDDEN">
					<div class="inner_noPlace">
						<h3 class="noKeyword">
							<em id="info.noPlace.keyword" class="txt_keyword"></em> 검색 결과가
							없어요.
						</h3>
						<p class="noResultDesc">
							검색어의 철자가 정확한지 다시 한번 확인해 주세요.<br>장소를 찾을 때 전화번호, 주소도 활용해 보세요.
						</p>
						<a
							href="http://search.daum.net/search?w=tot&amp;DA=54X&amp;q=%EC%98%A4%ED%8D%84"
							class="noKeywordLink" id="info.noPlace.daum.link" target="_blank">Daum
							검색 결과 보기</a>
						<div id="info.noPlace.register" class="register">
							새로운 수정된 장소를 알고 계세요?<br>장소 제보는 지도 품질 향상에 큰 도움이 됩니다. <a
								id="info.noPlace.register.btn" class="registerBtn" href="#"
								target="_blank">신규 장소 등록</a>
						</div>
						<!-- 2018-12-11_v2 수정 : 텍스트 수정 -->
					</div>
					<!-- 2018-12-11_v2 추가 : div.noPlace 의 자식요소 모두 감싸는 div.inner_noPlace 추가 -->
				</div>
				<div id="info.search.noW3w" class="noPlace noPlace_type2 HIDDEN">
					<div class="inner_noPlace">
						<h3 class="noKeyword">검색 결과가 없어요.</h3>
					</div>
				</div>



				<div id="info.search" class="keywordSearch HIDDEN">



					<div id="info.search.theme" class="section themeSearch HIDDEN">
						<div class="sectiontitle">
							<h5 class="themetit">테마</h5>
							<span class="cntwrap"><em class="cnt"
								id="info.search.theme.cnt"></em></span>
						</div>
						<ul id="info.search.themeList" class="themeList">
						</ul>
					</div>

					<div id="info.search.buses" class="section buses">
						<div class="sectiontitle sectionBus">
							<h5 class="busestit">버스번호</h5>
							<span class="cntwrap"><em id="info.search.buses.cnt"
								class="cnt"></em></span> <span id="info.search.buses.busstop"
								class="busstop HIDDEN"> 버스 정류장<em
								id="info.search.buses.busstop.cnt" class="cnt"></em>
							</span>
							<div id="info.search.buses.regions" class="regionsbox"></div>
						</div>
						<ul id="info.search.buses.list"></ul>
						<a id="info.search.buses.more" class="more" href="#">버스 더보기</a>
					</div>

					<div id="info.search.busstops" class="section busstops">
						<div class="sectiontitle sectionBus">
							<h3 class="busstoptitle">버스 정류장</h3>
							<span class="cntwrap"><em id="info.search.busstops.cnt"
								class="cnt"></em></span>
							<div id="info.search.busstops.regions" class="regionsbox"></div>
						</div>
						<ul id="info.search.busstops.list"></ul>
						<a id="info.search.busstops.more" class="more" href="#">버스 정류장
							더보기<span class="ico_road_arrow"></span>
						</a>
					</div>

					<div id="info.search.address" class="section addresses">


						<div class="sectiontitle">
							<h3 class="addrtitle">주소</h3>
							<span class="cntwrap"><em id="info.search.address.cnt"
								class="cnt"></em></span>
						</div>
						<div id="info.search.address.retry" class="retry HIDDEN">
							<div class="content">
								<span class="ico"></span> <span class="txt">찾으시는 주소가 없어
									유사한 주소를 제공합니다.</span>
							</div>
						</div>
						<ul id="info.search.address.list"></ul>
						<a id="info.search.address.more" class="more" href="#">주소 더보기<span
							class="ico_road_arrow"></span></a>
					</div>

					<div id="info.search.place" class="section places">
						<div class="sectiontitle">
							<h5 class="placetit">장소</h5>
							<span class="cntwrap"><em id="info.search.place.cnt"
								class="cnt"></em></span>
							<ol id="info.search.place.sort" class="Sort"></ol>
						</div>
						<div id="info.search.place.breadcrumb" class="breadcrumb"></div>
						<ul id="info.search.place.list" class="placelist"></ul>
						<a id="info.search.place.more" class="more" href="#">장소 더보기</a>
					</div>
					<div id="info.search.page" class="pages HIDDEN">
						<div class="pageWrap">
							<button type="button" id="info.search.page.prev"
								class="prev disabled">이전</button>
							<a id="info.search.page.no1" class="INACTIVE" href="#">1</a> <a
								id="info.search.page.no2" class="INACTIVE" href="#">2</a> <a
								id="info.search.page.no3" class="INACTIVE" href="#">3</a> <a
								id="info.search.page.no4" class="INACTIVE" href="#">4</a> <a
								id="info.search.page.no5" class="INACTIVE" href="#">5</a>
							<button type="button" id="info.search.page.next" class="next">다음</button>
						</div>
					</div>

				</div>

				<div id="info.addNewPlace" class="info_addplace HIDDEN">
					<strong class="tit_addplace">새로운 수정된 장소를 알고 계세요?<br>장소
						제보는 지도 품질 향상에 큰 도움이 됩니다.
					</strong> <a id="info.addNewPlace.btn" href="#"
						class="ico_place link_addplace">신규 장소 등록</a>
				</div>

				<div id="info.noSuchPlace" class="noPlace noSuchPlace HIDDEN">
					<p>
						<strong>'해당위치'</strong>에 대한 검색 결과가 없습니다.
					</p>
				</div>

				<div id="info.noPlaceInBounds" class="noPlace noInBounds HIDDEN">
					<div class="inner_noPlace">
						<h3 class="noKeyword">
							<em id="info.noPlaceInBounds.keyword" class="txt_keyword"></em>
							검색 결과가 없어요.
						</h3>
						<p class="noResultDesc">
							검색어의 철자가 정확한지 다시 한번 확인해 주세요.<br>장소를 찾을 때 전화번호, 주소도 활용해 보세요.
						</p>
						<a
							href="http://search.daum.net/search?w=tot&amp;DA=54X&amp;q=%EC%98%A4%ED%8D%84"
							class="noKeywordLink" id="info.noPlaceInBounds.daum.link"
							target="_blank">Daum 검색 결과 보기</a>
						<div id="info.noPlaceInBounds.register" class="register">
							새로운 수정된 장소를 알고 계세요?<br>장소 제보는 지도 품질 향상에 큰 도움이 됩니다. <a
								id="info.noPlaceInBounds.register.btn" class="registerBtn"
								href="#" target="_blank">신규 장소 등록</a>
						</div>
						<!-- 2018-12-11_v2 수정 : 텍스트 수정 -->
					</div>
					<!-- 2018-12-11_v2 추가 : div.noPlace 의 자식요소 모두 감싸는 div.inner_noPlace 추가 -->

				</div>

				<div id="info.noThemePlace" class="noThemePlace HIDDEN">
					<p id="info.noThemePlace.category" class="reviewcategories HIDDEN">
						<a id="info.noThemePlace.category.n1" href="#">전체</a> <a
							id="info.noThemePlace.category.n2" href="#">음식</a> <a
							id="info.noThemePlace.category.n3" href="#">여행</a> <a
							id="info.noThemePlace.category.n4" href="#">기타</a>
					</p>
					<p class="l1">
						<strong>'주변 <span id="info.noThemePlace.title"></span>'
						</strong>에 대한 검색 결과가 없습니다.
					</p>
					<p class="l2">지도를 축소하여 다시 테마 지도를 이용해 주세요.</p>
				</div>



			</div>
			<div id="info.route" class="RouteSearch HIDDEN">

				<h2 class="screen_out">길찾기 검색</h2>
				<div id="info.route.searchBox"
					class="RouteSearchBox HIDDEN WHITEOUT">
					<div id="info.route.searchBox.list">
						<div class="WaypointBoxView origin" sortid="0"
							style="left: 0px; top: 0px; position: relative;">
							<div class="dragArea">
								<span class="title origin"></span>
							</div>
							<div class="waypointWindow">
								<input class="valueBox" readonly="" placeholder="출발지를 입력하세요">
								<form class="WaypointInput HIDDEN">
									<input id="info.route.waypointSuggest.input0" title="검색어 입력"
										class="input" type="text" autocomplete="off"><input
										class="submit" type="submit" value="">
									<blockquote id="info.route.waypointSuggest.input0Suggest"
										class="inputSuggest">
										<div class="suggestBox box_sub" style="display: none;">
											<div class="baseBox bg">
												<div class="list">
													<ul class="suggest_list_target"></ul>
												</div>
											</div>
											<div class="favorite_find HIDDEN"></div>
											<div class="search_recent recent_none">
												<em class="tit_recent">히스토리가 없어요.</em>
												<ul data-id="wrap" class="list_recent"></ul>
												<div class="favorite_recent">
													<button data-id="disabled" type="button"
														class="btn_recentoff">히스토리 끄기</button>
													<button data-id="clear" type="button"
														class="btn_deleteall HIDDEN">전체삭제</button>
												</div>
											</div>
										</div>
									</blockquote>
								</form>
							</div>
						</div>
						<div class="WaypointBoxView dest" sortid="1"
							style="left: 0px; top: 0px; position: relative;">
							<div class="dragArea">
								<span class="title dest"></span>
							</div>
							<div class="waypointWindow">
								<input class="valueBox" readonly="" placeholder="도착지를 입력하세요">
								<form class="WaypointInput HIDDEN">
									<input id="info.route.waypointSuggest.input1" title="검색어 입력"
										class="input" type="text" autocomplete="off"><input
										class="submit" type="submit" value="">
									<blockquote id="info.route.waypointSuggest.input1Suggest"
										class="inputSuggest">
										<div class="suggestBox box_sub" style="display: none;">
											<div class="baseBox bg">
												<div class="list">
													<ul class="suggest_list_target"></ul>
												</div>
											</div>
											<div class="favorite_find HIDDEN"></div>
											<div class="search_recent recent_none">
												<em class="tit_recent">히스토리가 없어요.</em>
												<ul data-id="wrap" class="list_recent"></ul>
												<div class="favorite_recent">
													<button data-id="disabled" type="button"
														class="btn_recentoff">히스토리 끄기</button>
													<button data-id="clear" type="button"
														class="btn_deleteall HIDDEN">전체삭제</button>
												</div>
											</div>
										</div>
									</blockquote>
								</form>
							</div>
						</div>
					</div>
					<a href="#none" id="info.route.searchBox.toggleVia"
						class="btn_roadsearch toggleVia">경유지 추가</a>
					<!-- 2018-08-01 마크업 위치 변경 및 대체 텍스트 추가, btn_roadsearch 추가 -->
					<a href="#none" id="info.route.searchBox.change"
						class="btn_roadsearch routechange" title="출발/도착 순서 바꾸기">출발/도착
						순서 바꾸기</a>
					<!-- 2018-07-01 모두 지우기 버튼 마크업 위치 변경, .btn_roadsearch 추가 -->
					<a href="#none" id="info.route.searchBox.clearVia"
						class="btn_roadsearch clearVia" title="모두 지우기">모두 지우기</a>
					<!--
            <blockquote id="search.reverseHint" class="HIDDEN reverseHint"></blockquote>
        -->
				</div>

				<!--
        <div id="info.route.searchBox.options" class="searchBoxOptions">
        </div>
    -->
				<div id="info.flagsearch.method" class="routeMethod">
					<div class="RouteMethodTabView">
						<a id="cartab" data-id="car" class="car" href="#"></a> <a
							id="transittab" data-id="transit" class="transit" href="#"></a> <a
							id="walktab" data-id="walk" class="walk" href="#"></a> <a
							id="biketab" data-id="bike" class="bike" href="#"></a>
					</div>
				</div>


				<div id="info.route.home" class="routeHistory routedesc"></div>
				<div id="info.route.intro" class="Howto">
					<strong class="tit_intro">오늘은<br>어디로 안내할까요?
					</strong>
					<p class="desc_intro">
						매일매일 업데이트되는 최신정보로<br>가장 빠른 경로를 알려드려요.
					</p>
				</div>

				<div id="info.flagsearch" class="HIDDEN Flagsearch"
					style="min-height: 360px;">
					<div class="search">
						<div id="info.flagsearch.divided" class="flagDivided">
							<div id="info.flagsearch.correction" class="correction HIDDEN">
								<p class="correctionTop">
									'<strong id="info.flagsearch.correction.orig"></strong>'에서 '<strong
										id="info.flagsearch.correction.new"></strong>'으로 검색한 결과
								</p>
								<p class="correctionBottom">
									<a href="#" id="info.flagsearch.correction.goorig">입력한 '<span
										id="info.flagsearch.correction.orig2"></span>'(으)로 재검색 ‣
									</a>
								</p>
							</div>

							<div id="info.flagsearch.spellcheck" class="spellcheck HIDDEN">
								<div class="spellcheckTitle HIDDEN"
									id="info.flagsearch.spellcheck.titleText">
									'<strong id="info.flagsearch.spellcheck.title"></strong>' 검색결과
								</div>
								<p>
									<a href="#" class="candidate"
										id="info.flagsearch.spellcheck.candidate">'<span
										id="info.flagsearch.spellcheck.text"></span>'(으)로 검색하시겠습니까?
									</a>
								</p>
							</div>

							<div id="info.flagsearch.message" class="message"></div>

						</div>
						<div id="info.flagsearch.options" class="filterwrap">
							<div class="filter" data-mypage="true">
								<a href="#" class="ACTIVE" id="info.flagsearch.filter.all">전체</a>
								<a href="#" class="INACTIVE" id="info.flagsearch.filter.place">장소</a>
								<a href="#" class="INACTIVE" id="info.flagsearch.filter.address">주소</a>
								<a href="#" class="INACTIVE" id="info.flagsearch.filter.busstop">버스</a>
							</div>
						</div>
						<div id="info.flagsearch.address" class="section addresses">
							<div class="sectiontitle">
								<h3 class="addrtitle">주소</h3>
								<span class="cntwrap"><em
									id="info.flagsearch.address.cnt" class="cnt"></em></span>
							</div>
							<ul id="info.flagsearch.address.list"></ul>
							<a id="info.flagsearch.address.more" class="more" href="#">주소
								더보기<span class="ico_road_arrow"></span>
							</a>
						</div>

						<div id="info.flagsearch.place" class="section places">
							<h5 class="sectiontitle">
								<span class="placetitle">장소</span> <span class="cntwrap"><em
									id="info.flagsearch.place.cnt" class="cnt"></em></span>
							</h5>
							<ul id="info.flagsearch.place.list"></ul>
							<a id="info.flagsearch.place.more" class="more" href="#">장소
								더보기</a>
						</div>

						<div id="info.flagsearch.busstop"
							class="section busstopList HIDDEN">
							<div class="sectiontitle">
								<h3 class="busstoptitle">버스정류장</h3>
								<span class="cntwrap"><em
									id="info.flagsearch.busstop.cnt" class="cnt"></em></span>
							</div>
							<ul id="info.flagsearch.busstop.list"></ul>
							<a id="info.flagsearch.busstop.more" class="more" href="#">버스정류장
								더보기<span class="ico_road_arrow"></span>
							</a>
						</div>

						<div id="info.flagsearch.page" class="pages HIDDEN">
							<div class="pageWrap">
								<button type="button" id="info.flagsearch.page.prev"
									class="prev disabled">이전</button>
								<a id="info.flagsearch.page.no1" class="INACTIVE" href="#">1</a>
								<a id="info.flagsearch.page.no2" class="INACTIVE" href="#">2</a>
								<a id="info.flagsearch.page.no3" class="INACTIVE" href="#">3</a>
								<a id="info.flagsearch.page.no4" class="INACTIVE" href="#">4</a>
								<a id="info.flagsearch.page.no5" class="INACTIVE" href="#">5</a>
								<button type="button" id="info.flagsearch.page.next"
									class="next">다음</button>
							</div>
						</div>

						<div id="info.noFlagPlace" class="noPlace HIDDEN">
							<div class="inner_noPlace">
								<h3 class="noKeyword">
									<em id="info.noFlagPlace.keyword" class="txt_keyword"></em> 검색
									결과가 없어요.
								</h3>
								<p class="noResultDesc">
									검색어의 철자가 정확한지 다시 한번 확인해 주세요.<br>장소를 찾을 때 전화번호, 주소도 활용해
									보세요.
								</p>
								<a
									href="http://search.daum.net/search?w=tot&amp;DA=54X&amp;q=%EC%98%A4%ED%8D%84"
									class="noKeywordLink" id="info.noPlace.daum.link"
									target="_blank">Daum 검색 결과 보기</a>
								<div id="info.noFlagPlace.register" class="register">
									새로운 수정된 장소를 알고 계세요?<br>장소 제보는 지도 품질 향상에 큰 도움이 됩니다. <a
										id="info.noFlagPlace.register.btn" class="registerBtn"
										href="#" target="_blank">신규 장소 등록</a>
								</div>
								<!-- 2018-12-11_v2 수정 : 텍스트 수정 -->
							</div>
							<!-- 2018-12-11_v2 추가 : div.noPlace 의 자식요소 모두 감싸는 div.inner_noPlace 추가 -->
						</div>
						<div id="info.noW3w" class="noPlace noPlace_type2 ">
							<!--2019-04-12 : w3w 빈페이지 - noPlace_type2 클래스 추가 -->
							<div class="inner_noPlace">
								<h3 class="noKeyword">w3w를 지원하지 않는 기능이에요.</h3>
							</div>
						</div>

						<div id="info.flagsearch.addNewPlace" class="info_addplace HIDDEN">
							<strong class="tit_addplace">새로운 수정된 장소를 알고 계세요?<br>장소
								제보는 지도 품질 향상에 큰 도움이 됩니다.
							</strong> <a id="info.flagsearch.addNewPlace.btn" href="#"
								class="ico_place link_addplace">신규 장소 등록</a>
						</div>
					</div>

					<div id="info.carRoute" class="HIDDEN"></div>
					<div id="info.walkRoute" class="walkroute HIDDEN">
						<div class="WalkRouteResultView">
							<ul data-id="list" class="list"></ul>
							<div class="notice">
								<span class="first"> 소요시간은 성인 도보기준 4km/h로 환산하여 제공됩니다.</span> <span
									class="second"> 도보 길찾기는 실제 구간과 다를 수 있으니 참고 부탁 드립니다.</span>
							</div>
							<div class="info_top">
								<a href="#none" class="link_top HIDDEN" data-id="goToTop">위로
									가기</a>
							</div>
							<div class="info_fixroute">
								길찾기 정보가 잘못되었나요?<br>잘못된 정보 제보는 지도 품질 향상에 큰 도움이 됩니다. <a
									href="#none" class="link_fixroute" data-id="fixRoute"> 틀린정보
									신고 </a>
							</div>
						</div>
						<div class="NoRouteView HIDDEN">
							<div class="NoRouteContentView">
								<div class="wrap" data-id="content">
									<h3 class="noKeyword" data-id="titleInfo">길찾기 검색 결과가 없어요.</h3>
									<div class="noRouteDesc" data-id="noRouteDesc"></div>
									<a href="http://kakaomap.tistory.com/210" target="_blank"
										class="link_suggest HIDDEN" data-id="link">도보 길찾기 제공지역 안내</a>
									<div class="intercityBox HIDDEN" data-id="intercityBox"></div>
								</div>
								<div class="info_fixroute">
									길찾기 정보가 잘못되었나요?<br>잘못된 정보 제보는 지도 품질 향상에 큰 도움이 됩니다. <a
										href="#" class="ico_place link_fixroute" data-id="fiyBtn">틀린정보
										신고</a>
								</div>
								<!-- 2018-12-11_v2 수정 : 텍스트 추가 -->
							</div>
						</div>
					</div>
					<div id="info.bikeRoute" class="bikeroute HIDDEN">
						<div class="BikeRouteResultView">
							<ul data-id="list" class="list"></ul>
							<div class="notice">
								<span class="first">소요시간은 자전거 평속 20km/h 내외로 환산하여 제공됩니다.</span>
								<!--
		<a href="#" class="second" data-id="openDetail">정보 제공의 한계와 책임</a>

		<div class="notice_detail HIDDEN" data-id="detailBox">
			<h2>정보 제공의 한계와 책임 안내</h2>
			<p>(주)카카오에서 제공하는 자전거 길찾기는 자전거 전용 도로를 우선으로 안내하며, 자전거 전용 도로가 없을 경우에는 자동차 경로 정보(자동차 전용 도로는 제외)로 안내합니다.</p>
			<p>도로 정보가 수집되지 않거나 최신 정보로 갱신되지 않은 일부 지역의 경우 잘못된 경로로 안내될 수 있으니 <strong>본 서비스 정보는 반드시 참고 자료로만 활용하시길 바랍니다. 본 서비스에서 제공한 정보를 이용하여 자전거 주행시 발생하는 사고 등에 대해서 당사는 법적 책임을 지지 않습니다.</strong></p>
			<p>자전거 주행 시 관계 법령을 준수하고 현장 상황에 맞게 안전 운행 하시기 바랍니다.</p>
			<img class="close" data-id="closeDetail" src="//t1.daumcdn.net/localimg/localimages/07/2017/pc/ico_noti_x.png" width="16" height="16" alt="닫기"/>
		</div>
		-->
							</div>
							<div class="info_top">
								<a href="#none" class="link_top HIDDEN" data-id="goToTop">위로
									가기</a>
							</div>
							<div class="info_fixroute">
								길찾기 정보가 잘못되었나요?<br>잘못된 정보 제보는 지도 품질 향상에 큰 도움이 됩니다. <a
									href="#none" class="link_fixroute" data-id="fixRoute"> 틀린정보
									신고 </a>
							</div>
						</div>
						<div class="NoRouteView HIDDEN">
							<div class="NoRouteContentView">
								<div class="wrap" data-id="content">
									<h3 class="noKeyword" data-id="titleInfo">길찾기 검색 결과가 없어요.</h3>
									<div class="noRouteDesc" data-id="noRouteDesc"></div>
									<a href="http://kakaomap.tistory.com/210" target="_blank"
										class="link_suggest HIDDEN" data-id="link">도보 길찾기 제공지역 안내</a>
									<div class="intercityBox HIDDEN" data-id="intercityBox"></div>
								</div>
								<div class="info_fixroute">
									길찾기 정보가 잘못되었나요?<br>잘못된 정보 제보는 지도 품질 향상에 큰 도움이 됩니다. <a
										href="#" class="ico_place link_fixroute" data-id="fiyBtn">틀린정보
										신고</a>
								</div>
								<!-- 2018-12-11_v2 수정 : 텍스트 추가 -->
							</div>
						</div>
					</div>
					<div class="TransitRouteResultView HIDDEN"></div>
					<div class="CarRouteResultView HIDDEN">
						<div class="info_pathfind">
							<!-- 요금설정 선택시 paysetting_on 클래스 추가  -->
							<div class="menu_pathfind" data-id="menu">
								<div data-id="option" class="opt_pathfind">
									<!-- 옵션 선택시 opt_open 클래스 추가 -->
									<div class="screen_out">길찾기 종류 선택상자</div>
									<span class="screen_out">선택내용 : </span> <a href="#"
										data-id="optionText" class="img_pathfind link_selected">최적경로</a>
									<div class="screen_out">선택옵션</div>
									<ul class="list_opt">
										<li><a href="#" data-id="recomm" class="link_option">최적경로</a></li>
										<li><a href="#" data-id="freeway" class="link_option">무료경로</a></li>
										<li><a href="#" data-id="shortest" class="link_option">최단거리</a></li>
										<li><a href="#" data-id="bike" class="link_option">자동차전용제외</a></li>
									</ul>
								</div>
								<div class="inner_pathfind">
									<div data-id="realtime" class="check_live">
										<input type="checkbox" data-id="realCheckBox" id="checkLive"
											class="inp_live"> <label for="checkLive"
											class="lab_live">실시간</label>
									</div>
									<span class="txt_bar" data-id="realtimeBar">|</span> <a
										href="#none" data-id="payset" class="link_payset link_payon">요금설정</a>
								</div>
							</div>
						</div>
						<ul class="list"></ul>
						<p class="daumNotice HIDDEN">
							<span class="notice_icon">아이콘</span><span class="notice_text"></span>
						</p>
						<div class="info_top">
							<a href="#" class="link_top HIDDEN">위로 가기</a>
						</div>
						<div class="info_fixroute">
							<strong class="tit_carsource">경로 정보 제공 : 카카오내비</strong><span>길찾기
								정보가 잘못되었나요?<br>잘못된 정보 제보는 지도 품질 향상에 큰 도움이 됩니다.
							</span><a href="#" class="link_fixroute"></a>
						</div>
					</div>
				</div>
			</div>

			<div id="info.bus" class="BusSearch WHITEOUT HIDDEN">
				<a href="#none" id="info.bus.removeAll" class="removeAll"
					title="모두 지우기">모두 지우기</a>
				<ul id="search.busMethodtype" class="BusMethodType">
					<li id="search.busMethodtype.number" class="busNum NUMBER-ACTIVE">
						<a href="#none">번호</a>
					</li>
					<li id="search.busMethodtype.stop" class="busStop BUSSTOP-INACTIVE">
						<a href="#none">정류장</a>
					</li>
					<li id="search.busMethodtype.region"
						class="busRegion REGION-INACTIVE"><a href="#none">지역</a></li>
				</ul>

				<div id="info.bus.searchBox.number" class="number">
					<form id="info.bus.searchBoxNumber" class="BusSearchBox WHITEOUT">
						<div class="box_search">
							<!-- 2018-07-06 label 추가 -->
							<h3 class="screen_out">
								<label for="info.route.searchBox.number.name">버스번호</label>
							</h3>
							<input id="info.route.searchBox.number.name" class="q"
								type="text" autocomplete="off" placeholder="버스번호를 입력하세요">
							<button id="info.bus.searchBox.number.submit" class="go"
								type="submit"></button>
							<blockquote id="info.route.searchBox.number.nameSuggest">
								<div class="suggestBox box_sub" style="display: none;">
									<div class="baseBox bg">
										<div class="list">
											<ul class="suggest_list_target"></ul>
										</div>
									</div>
									<div class="favorite_find HIDDEN"></div>
									<div class="search_recent recent_none">
										<em class="tit_recent">히스토리가 없어요.</em>
										<ul data-id="wrap" class="list_recent"></ul>
										<div class="favorite_recent">
											<button data-id="disabled" type="button"
												class="btn_recentoff">히스토리 끄기</button>
											<button data-id="clear" type="button"
												class="btn_deleteall HIDDEN">전체삭제</button>
										</div>
									</div>
								</div>
							</blockquote>
						</div>
					</form>
				</div>
				<div id="info.bus.searchBox.stop" class="stop HIDDEN">
					<form id="info.bus.searchBoxStop" class="BusSearchBox WHITEOUT">
						<div class="box_search">
							<h3 class="screen_out">
								<label for="info.route.searchBox.stop.name">버스정류장</label>
							</h3>
							<input id="info.route.searchBox.stop.name" class="q" type="text"
								autocomplete="off" placeholder="버스정류장을 입력하세요">
							<button id="info.bus.searchBox.stop.submit" class="go"
								type="submit"></button>
							<blockquote id="info.route.searchBox.stop.nameSuggest">
								<div class="suggestBox box_sub" style="display: none;">
									<div class="baseBox bg">
										<div class="list">
											<ul class="suggest_list_target"></ul>
										</div>
									</div>
									<div class="favorite_find HIDDEN"></div>
									<div class="search_recent recent_none">
										<em class="tit_recent">히스토리가 없어요.</em>
										<ul data-id="wrap" class="list_recent"></ul>
										<div class="favorite_recent">
											<button data-id="disabled" type="button"
												class="btn_recentoff">히스토리 끄기</button>
											<button data-id="clear" type="button"
												class="btn_deleteall HIDDEN">전체삭제</button>
										</div>
									</div>
								</div>
							</blockquote>
						</div>
					</form>
				</div>

				<div id="info.bus.region" class="region BusSearchBox HIDDEN">
					<div class="hb">
						<div id="info.bus.region.local.button" class="rb">
							<h3 class="screen_out">지역</h3>
							<span class="screen_out">선택상자</span> <em class="screen_out">선택내용
								:</em> <span id="info.bus.region.local" class="method melt">경기</span>
							<em class="screen_out">선택옵션</em>
							<ul id="search.busLocal" class="BusLocal HIDDEN">
								<li id="search.busLocal.seoul" class="INACTIVE">서울</li>
								<li id="search.busLocal.pusan" class="INACTIVE">부산</li>
								<li id="search.busLocal.daegu" class="INACTIVE">대구</li>
								<li id="search.busLocal.incheon" class="INACTIVE">인천</li>
								<li id="search.busLocal.kwangju" class="INACTIVE">광주</li>
								<li id="search.busLocal.daejeon" class="INACTIVE">대전</li>
								<li id="search.busLocal.ulsan" class="INACTIVE">울산</li>
								<li id="search.busLocal.sejong" class="INACTIVE">세종</li>
								<li id="search.busLocal.kyonggi" class="INACTIVE">경기</li>
								<li id="search.busLocal.kangwon" class="INACTIVE">강원</li>
								<li id="search.busLocal.chungbook" class="INACTIVE">충북</li>
								<li id="search.busLocal.chungnam" class="INACTIVE">충남</li>
								<li id="search.busLocal.jeonbuk" class="INACTIVE">전북</li>
								<li id="search.busLocal.jeonnam" class="INACTIVE">전남</li>
								<li id="search.busLocal.kyungbook" class="INACTIVE">경북</li>
								<li id="search.busLocal.kyungnam" class="INACTIVE">경남</li>
								<li id="search.busLocal.jeju" class="INACTIVE">제주</li>
							</ul>
						</div>
					</div>
					<div class="hb sub">
						<div id="info.bus.region.subLocal.button" class="rb">
							<strong class="screen_out">세부지역 선택상자</strong> <em
								class="screen_out">선택내용 :</em> <span
								id="info.bus.region.subLocal" class="method method-INACTIVE">가평군</span>
							<em class="screen_out">선택옵션</em>
							<ul id="search.seoulLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.11680" class="INACTIVE">강남구</li>
								<li id="search.busLocal.11740" class="INACTIVE">강동구</li>
								<li id="search.busLocal.11305" class="INACTIVE">강북구</li>
								<li id="search.busLocal.11500" class="INACTIVE">강서구</li>
								<li id="search.busLocal.11620" class="INACTIVE">관악구</li>
								<li id="search.busLocal.11215" class="INACTIVE">광진구</li>
								<li id="search.busLocal.11530" class="INACTIVE">구로구</li>
								<li id="search.busLocal.11545" class="INACTIVE">금천구</li>
								<li id="search.busLocal.11350" class="INACTIVE">노원구</li>
								<li id="search.busLocal.11320" class="INACTIVE">도봉구</li>
								<li id="search.busLocal.11230" class="INACTIVE">동대문구</li>
								<li id="search.busLocal.11590" class="INACTIVE">동작구</li>
								<li id="search.busLocal.11440" class="INACTIVE">마포구</li>
								<li id="search.busLocal.11410" class="INACTIVE">서대문구</li>
								<li id="search.busLocal.11650" class="INACTIVE">서초구</li>
								<li id="search.busLocal.11200" class="INACTIVE">성동구</li>
								<li id="search.busLocal.11290" class="INACTIVE">성북구</li>
								<li id="search.busLocal.11710" class="INACTIVE">송파구</li>
								<li id="search.busLocal.11470" class="INACTIVE">양천구</li>
								<li id="search.busLocal.11560" class="INACTIVE">영등포구</li>
								<li id="search.busLocal.11170" class="INACTIVE">용산구</li>
								<li id="search.busLocal.11380" class="INACTIVE">은평구</li>
								<li id="search.busLocal.11110" class="INACTIVE">종로구</li>
								<li id="search.busLocal.11140" class="INACTIVE">중구</li>
								<li id="search.busLocal.11260" class="INACTIVE">중랑구</li>
							</ul>
							<ul id="search.pusanLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.26440" class="INACTIVE">강서구</li>
								<li id="search.busLocal.26410" class="INACTIVE">금정구</li>
								<li id="search.busLocal.26710" class="INACTIVE">기장군</li>
								<li id="search.busLocal.26290" class="INACTIVE">남구</li>
								<li id="search.busLocal.26170" class="INACTIVE">동구</li>
								<li id="search.busLocal.26260" class="INACTIVE">동래구</li>
								<li id="search.busLocal.26230" class="INACTIVE">부산진구</li>
								<li id="search.busLocal.26320" class="INACTIVE">북구</li>
								<li id="search.busLocal.26530" class="INACTIVE">사상구</li>
								<li id="search.busLocal.26380" class="INACTIVE">사하구</li>
								<li id="search.busLocal.26140" class="INACTIVE">서구</li>
								<li id="search.busLocal.26500" class="INACTIVE">수영구</li>
								<li id="search.busLocal.26470" class="INACTIVE">연제구</li>
								<li id="search.busLocal.26200" class="INACTIVE">영도구</li>
								<li id="search.busLocal.26110" class="INACTIVE">중구</li>
								<li id="search.busLocal.26350" class="INACTIVE">해운대구</li>
							</ul>
							<ul id="search.daeguLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.27200" class="INACTIVE">남구</li>
								<li id="search.busLocal.27290" class="INACTIVE">달서구</li>
								<li id="search.busLocal.27710" class="INACTIVE">달성군</li>
								<li id="search.busLocal.27140" class="INACTIVE">동구</li>
								<li id="search.busLocal.27230" class="INACTIVE">북구</li>
								<li id="search.busLocal.27170" class="INACTIVE">서구</li>
								<li id="search.busLocal.27260" class="INACTIVE">수성구</li>
								<li id="search.busLocal.27110" class="INACTIVE">중구</li>
							</ul>
							<ul id="search.incheonLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.28710" class="INACTIVE">강화군</li>
								<li id="search.busLocal.28245" class="INACTIVE">계양구</li>
								<li id="search.busLocal.28200" class="INACTIVE">남동구</li>
								<li id="search.busLocal.28140" class="INACTIVE">동구</li>
								<li id="search.busLocal.28177" class="INACTIVE">미추홀구</li>
								<li id="search.busLocal.28237" class="INACTIVE">부평구</li>
								<li id="search.busLocal.28260" class="INACTIVE">서구</li>
								<li id="search.busLocal.28185" class="INACTIVE">연수구</li>
								<li id="search.busLocal.28720" class="INACTIVE">옹진군</li>
								<li id="search.busLocal.28110" class="INACTIVE">중구</li>
							</ul>
							<ul id="search.kwangjuLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.29200" class="INACTIVE">광산구</li>
								<li id="search.busLocal.29155" class="INACTIVE">남구</li>
								<li id="search.busLocal.29110" class="INACTIVE">동구</li>
								<li id="search.busLocal.29170" class="INACTIVE">북구</li>
								<li id="search.busLocal.29140" class="INACTIVE">서구</li>
							</ul>
							<ul id="search.daejeonLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.30230" class="INACTIVE">대덕구</li>
								<li id="search.busLocal.30110" class="INACTIVE">동구</li>
								<li id="search.busLocal.30170" class="INACTIVE">서구</li>
								<li id="search.busLocal.30200" class="INACTIVE">유성구</li>
								<li id="search.busLocal.30140" class="INACTIVE">중구</li>
							</ul>
							<ul id="search.ulsanLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.31140" class="INACTIVE">남구</li>
								<li id="search.busLocal.31170" class="INACTIVE">동구</li>
								<li id="search.busLocal.31200" class="INACTIVE">북구</li>
								<li id="search.busLocal.31710" class="INACTIVE">울주군</li>
								<li id="search.busLocal.31110" class="INACTIVE">중구</li>
							</ul>
							<ul id="search.sejongLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.36110" class="INACTIVE"></li>
							</ul>
							<ul id="search.kyonggiLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.41820" class="INACTIVE">가평군</li>
								<li id="search.busLocal.41280" class="INACTIVE">고양시</li>
								<li id="search.busLocal.41281" class="INACTIVE">고양시 덕양구</li>
								<li id="search.busLocal.41285" class="INACTIVE">고양시 일산동구</li>
								<li id="search.busLocal.41287" class="INACTIVE">고양시 일산서구</li>
								<li id="search.busLocal.41290" class="INACTIVE">과천시</li>
								<li id="search.busLocal.41210" class="INACTIVE">광명시</li>
								<li id="search.busLocal.41610" class="INACTIVE">광주시</li>
								<li id="search.busLocal.41310" class="INACTIVE">구리시</li>
								<li id="search.busLocal.41410" class="INACTIVE">군포시</li>
								<li id="search.busLocal.41570" class="INACTIVE">김포시</li>
								<li id="search.busLocal.41360" class="INACTIVE">남양주시</li>
								<li id="search.busLocal.41250" class="INACTIVE">동두천시</li>
								<li id="search.busLocal.41190" class="INACTIVE">부천시</li>
								<li id="search.busLocal.41130" class="INACTIVE">성남시</li>
								<li id="search.busLocal.41135" class="INACTIVE">성남시 분당구</li>
								<li id="search.busLocal.41131" class="INACTIVE">성남시 수정구</li>
								<li id="search.busLocal.41133" class="INACTIVE">성남시 중원구</li>
								<li id="search.busLocal.41110" class="INACTIVE">수원시</li>
								<li id="search.busLocal.41113" class="INACTIVE">수원시 권선구</li>
								<li id="search.busLocal.41117" class="INACTIVE">수원시 영통구</li>
								<li id="search.busLocal.41111" class="INACTIVE">수원시 장안구</li>
								<li id="search.busLocal.41115" class="INACTIVE">수원시 팔달구</li>
								<li id="search.busLocal.41390" class="INACTIVE">시흥시</li>
								<li id="search.busLocal.41270" class="INACTIVE">안산시</li>
								<li id="search.busLocal.41273" class="INACTIVE">안산시 단원구</li>
								<li id="search.busLocal.41271" class="INACTIVE">안산시 상록구</li>
								<li id="search.busLocal.41550" class="INACTIVE">안성시</li>
								<li id="search.busLocal.41170" class="INACTIVE">안양시</li>
								<li id="search.busLocal.41173" class="INACTIVE">안양시 동안구</li>
								<li id="search.busLocal.41171" class="INACTIVE">안양시 만안구</li>
								<li id="search.busLocal.41630" class="INACTIVE">양주시</li>
								<li id="search.busLocal.41830" class="INACTIVE">양평군</li>
								<li id="search.busLocal.41670" class="INACTIVE">여주시</li>
								<li id="search.busLocal.41800" class="INACTIVE">연천군</li>
								<li id="search.busLocal.41370" class="INACTIVE">오산시</li>
								<li id="search.busLocal.41460" class="INACTIVE">용인시</li>
								<li id="search.busLocal.41463" class="INACTIVE">용인시 기흥구</li>
								<li id="search.busLocal.41465" class="INACTIVE">용인시 수지구</li>
								<li id="search.busLocal.41461" class="INACTIVE">용인시 처인구</li>
								<li id="search.busLocal.41430" class="INACTIVE">의왕시</li>
								<li id="search.busLocal.41150" class="INACTIVE">의정부시</li>
								<li id="search.busLocal.41500" class="INACTIVE">이천시</li>
								<li id="search.busLocal.41480" class="INACTIVE">파주시</li>
								<li id="search.busLocal.41220" class="INACTIVE">평택시</li>
								<li id="search.busLocal.41650" class="INACTIVE">포천시</li>
								<li id="search.busLocal.41450" class="INACTIVE">하남시</li>
								<li id="search.busLocal.41590" class="INACTIVE">화성시</li>
							</ul>
							<ul id="search.kangwonLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.42150" class="INACTIVE">강릉시</li>
								<li id="search.busLocal.42820" class="INACTIVE">고성군</li>
								<li id="search.busLocal.42170" class="INACTIVE">동해시</li>
								<li id="search.busLocal.42230" class="INACTIVE">삼척시</li>
								<li id="search.busLocal.42210" class="INACTIVE">속초시</li>
								<li id="search.busLocal.42800" class="INACTIVE">양구군</li>
								<li id="search.busLocal.42830" class="INACTIVE">양양군</li>
								<li id="search.busLocal.42750" class="INACTIVE">영월군</li>
								<li id="search.busLocal.42130" class="INACTIVE">원주시</li>
								<li id="search.busLocal.42810" class="INACTIVE">인제군</li>
								<li id="search.busLocal.42770" class="INACTIVE">정선군</li>
								<li id="search.busLocal.42780" class="INACTIVE">철원군</li>
								<li id="search.busLocal.42110" class="INACTIVE">춘천시</li>
								<li id="search.busLocal.42190" class="INACTIVE">태백시</li>
								<li id="search.busLocal.42760" class="INACTIVE">평창군</li>
								<li id="search.busLocal.42720" class="INACTIVE">홍천군</li>
								<li id="search.busLocal.42790" class="INACTIVE">화천군</li>
								<li id="search.busLocal.42730" class="INACTIVE">횡성군</li>
							</ul>
							<ul id="search.chungbookLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.43760" class="INACTIVE">괴산군</li>
								<li id="search.busLocal.43800" class="INACTIVE">단양군</li>
								<li id="search.busLocal.43720" class="INACTIVE">보은군</li>
								<li id="search.busLocal.43740" class="INACTIVE">영동군</li>
								<li id="search.busLocal.43730" class="INACTIVE">옥천군</li>
								<li id="search.busLocal.43770" class="INACTIVE">음성군</li>
								<li id="search.busLocal.43150" class="INACTIVE">제천시</li>
								<li id="search.busLocal.43745" class="INACTIVE">증평군</li>
								<li id="search.busLocal.43750" class="INACTIVE">진천군</li>
								<li id="search.busLocal.43110" class="INACTIVE">청주시</li>
								<li id="search.busLocal.43111" class="INACTIVE">청주시 상당구</li>
								<li id="search.busLocal.43112" class="INACTIVE">청주시 서원구</li>
								<li id="search.busLocal.43114" class="INACTIVE">청주시 청원구</li>
								<li id="search.busLocal.43113" class="INACTIVE">청주시 흥덕구</li>
								<li id="search.busLocal.43130" class="INACTIVE">충주시</li>
							</ul>
							<ul id="search.chungnamLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.44250" class="INACTIVE">계룡시</li>
								<li id="search.busLocal.44150" class="INACTIVE">공주시</li>
								<li id="search.busLocal.44710" class="INACTIVE">금산군</li>
								<li id="search.busLocal.44230" class="INACTIVE">논산시</li>
								<li id="search.busLocal.44270" class="INACTIVE">당진시</li>
								<li id="search.busLocal.44180" class="INACTIVE">보령시</li>
								<li id="search.busLocal.44760" class="INACTIVE">부여군</li>
								<li id="search.busLocal.44210" class="INACTIVE">서산시</li>
								<li id="search.busLocal.44770" class="INACTIVE">서천군</li>
								<li id="search.busLocal.44200" class="INACTIVE">아산시</li>
								<li id="search.busLocal.44810" class="INACTIVE">예산군</li>
								<li id="search.busLocal.44130" class="INACTIVE">천안시</li>
								<li id="search.busLocal.44131" class="INACTIVE">천안시 동남구</li>
								<li id="search.busLocal.44133" class="INACTIVE">천안시 서북구</li>
								<li id="search.busLocal.44790" class="INACTIVE">청양군</li>
								<li id="search.busLocal.44825" class="INACTIVE">태안군</li>
								<li id="search.busLocal.44800" class="INACTIVE">홍성군</li>
							</ul>
							<ul id="search.jeonbukLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.45790" class="INACTIVE">고창군</li>
								<li id="search.busLocal.45130" class="INACTIVE">군산시</li>
								<li id="search.busLocal.45210" class="INACTIVE">김제시</li>
								<li id="search.busLocal.45190" class="INACTIVE">남원시</li>
								<li id="search.busLocal.45730" class="INACTIVE">무주군</li>
								<li id="search.busLocal.45800" class="INACTIVE">부안군</li>
								<li id="search.busLocal.45770" class="INACTIVE">순창군</li>
								<li id="search.busLocal.45710" class="INACTIVE">완주군</li>
								<li id="search.busLocal.45140" class="INACTIVE">익산시</li>
								<li id="search.busLocal.45750" class="INACTIVE">임실군</li>
								<li id="search.busLocal.45740" class="INACTIVE">장수군</li>
								<li id="search.busLocal.45110" class="INACTIVE">전주시</li>
								<li id="search.busLocal.45113" class="INACTIVE">전주시 덕진구</li>
								<li id="search.busLocal.45111" class="INACTIVE">전주시 완산구</li>
								<li id="search.busLocal.45180" class="INACTIVE">정읍시</li>
								<li id="search.busLocal.45720" class="INACTIVE">진안군</li>
							</ul>
							<ul id="search.jeonnamLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.46810" class="INACTIVE">강진군</li>
								<li id="search.busLocal.46770" class="INACTIVE">고흥군</li>
								<li id="search.busLocal.46720" class="INACTIVE">곡성군</li>
								<li id="search.busLocal.46230" class="INACTIVE">광양시</li>
								<li id="search.busLocal.46730" class="INACTIVE">구례군</li>
								<li id="search.busLocal.46170" class="INACTIVE">나주시</li>
								<li id="search.busLocal.46710" class="INACTIVE">담양군</li>
								<li id="search.busLocal.46110" class="INACTIVE">목포시</li>
								<li id="search.busLocal.46840" class="INACTIVE">무안군</li>
								<li id="search.busLocal.46780" class="INACTIVE">보성군</li>
								<li id="search.busLocal.46150" class="INACTIVE">순천시</li>
								<li id="search.busLocal.46910" class="INACTIVE">신안군</li>
								<li id="search.busLocal.46130" class="INACTIVE">여수시</li>
								<li id="search.busLocal.46870" class="INACTIVE">영광군</li>
								<li id="search.busLocal.46830" class="INACTIVE">영암군</li>
								<li id="search.busLocal.46890" class="INACTIVE">완도군</li>
								<li id="search.busLocal.46880" class="INACTIVE">장성군</li>
								<li id="search.busLocal.46800" class="INACTIVE">장흥군</li>
								<li id="search.busLocal.46900" class="INACTIVE">진도군</li>
								<li id="search.busLocal.46860" class="INACTIVE">함평군</li>
								<li id="search.busLocal.46820" class="INACTIVE">해남군</li>
								<li id="search.busLocal.46790" class="INACTIVE">화순군</li>
							</ul>
							<ul id="search.kyungbookLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.47290" class="INACTIVE">경산시</li>
								<li id="search.busLocal.47130" class="INACTIVE">경주시</li>
								<li id="search.busLocal.47830" class="INACTIVE">고령군</li>
								<li id="search.busLocal.47190" class="INACTIVE">구미시</li>
								<li id="search.busLocal.47720" class="INACTIVE">군위군</li>
								<li id="search.busLocal.47150" class="INACTIVE">김천시</li>
								<li id="search.busLocal.47280" class="INACTIVE">문경시</li>
								<li id="search.busLocal.47920" class="INACTIVE">봉화군</li>
								<li id="search.busLocal.47250" class="INACTIVE">상주시</li>
								<li id="search.busLocal.47840" class="INACTIVE">성주군</li>
								<li id="search.busLocal.47170" class="INACTIVE">안동시</li>
								<li id="search.busLocal.47770" class="INACTIVE">영덕군</li>
								<li id="search.busLocal.47760" class="INACTIVE">영양군</li>
								<li id="search.busLocal.47210" class="INACTIVE">영주시</li>
								<li id="search.busLocal.47230" class="INACTIVE">영천시</li>
								<li id="search.busLocal.47900" class="INACTIVE">예천군</li>
								<li id="search.busLocal.47940" class="INACTIVE">울릉군</li>
								<li id="search.busLocal.47930" class="INACTIVE">울진군</li>
								<li id="search.busLocal.47730" class="INACTIVE">의성군</li>
								<li id="search.busLocal.47820" class="INACTIVE">청도군</li>
								<li id="search.busLocal.47750" class="INACTIVE">청송군</li>
								<li id="search.busLocal.47850" class="INACTIVE">칠곡군</li>
								<li id="search.busLocal.47110" class="INACTIVE">포항시</li>
								<li id="search.busLocal.47111" class="INACTIVE">포항시 남구</li>
								<li id="search.busLocal.47113" class="INACTIVE">포항시 북구</li>
							</ul>
							<ul id="search.kyungnamLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.48310" class="INACTIVE">거제시</li>
								<li id="search.busLocal.48880" class="INACTIVE">거창군</li>
								<li id="search.busLocal.48820" class="INACTIVE">고성군</li>
								<li id="search.busLocal.48250" class="INACTIVE">김해시</li>
								<li id="search.busLocal.48840" class="INACTIVE">남해군</li>
								<li id="search.busLocal.48270" class="INACTIVE">밀양시</li>
								<li id="search.busLocal.48240" class="INACTIVE">사천시</li>
								<li id="search.busLocal.48860" class="INACTIVE">산청군</li>
								<li id="search.busLocal.48330" class="INACTIVE">양산시</li>
								<li id="search.busLocal.48720" class="INACTIVE">의령군</li>
								<li id="search.busLocal.48170" class="INACTIVE">진주시</li>
								<li id="search.busLocal.48740" class="INACTIVE">창녕군</li>
								<li id="search.busLocal.48120" class="INACTIVE">창원시</li>
								<li id="search.busLocal.48125" class="INACTIVE">창원시 마산합포구</li>
								<li id="search.busLocal.48127" class="INACTIVE">창원시 마산회원구</li>
								<li id="search.busLocal.48123" class="INACTIVE">창원시 성산구</li>
								<li id="search.busLocal.48121" class="INACTIVE">창원시 의창구</li>
								<li id="search.busLocal.48129" class="INACTIVE">창원시 진해구</li>
								<li id="search.busLocal.48220" class="INACTIVE">통영시</li>
								<li id="search.busLocal.48850" class="INACTIVE">하동군</li>
								<li id="search.busLocal.48730" class="INACTIVE">함안군</li>
								<li id="search.busLocal.48870" class="INACTIVE">함양군</li>
								<li id="search.busLocal.48890" class="INACTIVE">합천군</li>
							</ul>
							<ul id="search.jejuLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.50130" class="INACTIVE">서귀포시</li>
								<li id="search.busLocal.50110" class="INACTIVE">제주시</li>
							</ul>
						</div>
					</div>
				</div>

				<div id="info.busIntro" class="Howto">
					<strong class="tit_intro">지금, 딱!<br>내가 탈 버스가 어디있는지
					</strong>
					<p class="desc_intro">
						노선 정보는 물론, 실시간으로<br>버스 도착정보와 위치를 확인하세요.
					</p>
					<a href="http://kakaomap.tistory.com/219" class="link_intro"
						target="_blank">서비스 제공지역 안내</a>
				</div>

				<div id="info.bus.search" class="BusResult HIDDEN">
					<div id="info.bus.message" class="busMessage">
						<div id="info.bus.guide" class="guide">
							<div class="BusMessageView">
								<div data-id="current" class="line">
									<p data-id="currenttext" class="desc_search"></p>
									<div data-id="currentupperparagraph" class="paragraph ">
										<div data-id="currentupperwrap" class="wrap">
											<strong class="screen_out">동명지역 선택상자</strong> <em
												class="screen_out">선택내용 :</em> <a
												data-id="currentupperlabel" class="label"></a> <em
												class="screen_out">선택옵션</em>
										</div>
										<p data-id="currentuppertext" class="desc_search text"></p>
									</div>
									<div data-id="currentlowerparagraph" class="paragraph ">
										<div data-id="currentlowerwrap">
											<a data-id="currentlowerlabel" class="label"></a>
										</div>
										<p data-id="currentlowertext" class="desc_search text"></p>
									</div>
								</div>
								<div data-id="next" class="line">
									<a href="#none" data-id="nexttext" class="link_search"></a>
									<div data-id="nextupperparagraph" class="paragraph ">
										<div data-id="nextupperwrap">
											<strong class="screen_out">동명지역 선택상자</strong> <em
												class="screen_out">선택내용 :</em> <a data-id="nextupperlabel"
												class="label"></a> <em class="screen_out">선택옵션</em>
										</div>
										<p data-id="nextuppertext" class="desc_search text"></p>
									</div>
									<div data-id="nextlowerparagraph" class="paragraph ">
										<div data-id="nextlowerwrap">
											<a data-id="nextlowerlabel" class="label"></a>
										</div>
										<p data-id="nextlowertext" class="desc_search text"></p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="info.bus.title" class="busTitle">
						<h3 class="title">검색결과</h3>
						<span id="info.bus.count" class="cntwrap"></span>
						<div id="info.bus.filter" class="filter"></div>
					</div>
					<ul id="info.bus.list" class="list"></ul>
					<div id="info.bus.page" class="pages HIDDEN">
						<div class="pageWrap">
							<button type="button" id="info.bus.page.prev"
								class="prev disabled">이전</button>
							<a id="info.bus.page.no1" class="INACTIVE" href="#">1</a> <a
								id="info.bus.page.no2" class="INACTIVE" href="#">2</a> <a
								id="info.bus.page.no3" class="INACTIVE" href="#">3</a> <a
								id="info.bus.page.no4" class="INACTIVE" href="#">4</a> <a
								id="info.bus.page.no5" class="INACTIVE" href="#">5</a>
							<button type="button" id="info.bus.page.next" class="next">다음</button>
						</div>
					</div>
					<div id="info.noBus" class="info_nobus HIDDEN">
						<div class="NoBusView">
							<h4 class="noKeyword">
								<!-- <img src="//t1.daumcdn.net/localimg/localimages/07/2013/img/new_nodata_icon.png" width="14" height="14"> 2018-12-11_v2 삭제 -->
								<!-- <span data-id="titleInfo"> 해당 버스번호의 검색결과가 없습니다. </span> -->
								검색 결과가 없어요.
							</h4>
							<!-- 2018-12-11_v2 수정 : 1. 불필요한 요소(span.textColor, span[data-id=titleInfo]) 제거 2. 텍스트 수정 3. 클래스 추가(.noKeyword)-->
							<!-- 2018-12-18 수정 : 태그변경(h5~>h4) -->
							<div class="noRouteDesc" data-id="noRouteDesc"></div>
						</div>
						<div class="NoBusView">
							<h4 class="noKeyword">
								<!-- <img src="//t1.daumcdn.net/localimg/localimages/07/2013/img/new_nodata_icon.png" width="14" height="14"> 2018-12-11_v2 삭제 -->
								<!-- <span data-id="titleInfo"> 해당 버스번호의 검색결과가 없습니다. </span> -->
								검색 결과가 없어요.
							</h4>
							<!-- 2018-12-11_v2 수정 : 1. 불필요한 요소(span.textColor, span[data-id=titleInfo]) 제거 2. 텍스트 수정 3. 클래스 추가(.noKeyword)-->
							<!-- 2018-12-18 수정 : 태그변경(h5~>h4) -->
							<div class="noRouteDesc" data-id="noRouteDesc"></div>
						</div>
					</div>
				</div>

			</div>
			<div id="info.subway" class="SubwayRouteSearch HIDDEN WHITEOUT">
				<h2 class="screen_out">지하철 검색</h2>
				<div class="SubwayRegion WHITEOUT">
					<ul id="info.subway.region">
						<li class="seoul seoul-INACTIVE seoul-ACTIVE"><a href="#">수도권</a></li>
						<li class="busan busan-INACTIVE"><a href="#">부산</a></li>
						<li class="daegu daegu-INACTIVE"><a href="#">대구</a></li>
						<li class="gwangju gwangju-INACTIVE"><a href="#">광주</a></li>
						<li class="daejeon daejeon-INACTIVE"><a href="#">대전</a></li>
					</ul>
					<a href="#none" id="info.subway.remove" class="remove"
						title="모두 지우기">모두 지우기</a>
				</div>

				<div id="info.subway.searchBox"
					class="SubwayRouteSearchBox HIDDEN WHITEOUT">
					<div class="origindestBox">
						<div id="info.subway.searchBox.originBox" class="box">
							<form id="info.subway.searchBox.originForm" class="form">
								<input id="info.subway.searchBox.origin" class="q" type="text"
									value=""> <label for="info.subway.searchBox.origin"><span
									class="holderText op">출발역</span></label> <input class="submit"
									type="submit" value=""> <a href="#"
									id="info.subway.searchBox.originDelete"
									class="delete dl HIDDEN" title="출발역지우기">출발역지우기</a>
							</form>
							<blockquote id="info.subway.searchBox.originSuggest"
								class="SubwayOriginSuggest">
								<div class="suggestBox box_sub" style="display: none;">
									<div class="baseBox bg">
										<div class="list">
											<ul class="suggest_list_target"></ul>
										</div>
									</div>
									<div class="favorite_find HIDDEN"></div>
									<div class="search_recent recent_none">
										<em class="tit_recent">히스토리가 없어요.</em>
										<ul data-id="wrap" class="list_recent"></ul>
										<div class="favorite_recent">
											<button data-id="disabled" type="button"
												class="btn_recentoff">히스토리 끄기</button>
											<button data-id="clear" type="button"
												class="btn_deleteall HIDDEN">전체삭제</button>
										</div>
									</div>
								</div>
							</blockquote>
						</div>
						<a href="#" class="to" id="info.subway.searchBox.to"
							title="출발/도착 순서 바꾸기">출발/도착 순서 바꾸기</a>
						<div id="info.subway.searchBox.destBox" class="box dest">
							<form id="info.subway.searchBox.destForm" class="form">
								<input id="info.subway.searchBox.dest" class="q" type="text"
									value=""> <label for="info.subway.searchBox.dest"><span
									class="holderText dp">도착역</span></label> <input class="submit"
									type="submit" value=""> <a href="#"
									id="info.subway.searchBox.destDelete" class="delete dr HIDDEN"
									title="도착역지우기">도착역지우기</a>
							</form>
							<blockquote id="info.subway.searchBox.destSuggest"
								class="SubwayDestSuggest">
								<div class="suggestBox box_sub" style="display: none;">
									<div class="baseBox bg">
										<div class="list">
											<ul class="suggest_list_target"></ul>
										</div>
									</div>
									<div class="favorite_find HIDDEN"></div>
									<div class="search_recent recent_none">
										<em class="tit_recent">히스토리가 없어요.</em>
										<ul data-id="wrap" class="list_recent"></ul>
										<div class="favorite_recent">
											<button data-id="disabled" type="button"
												class="btn_recentoff">히스토리 끄기</button>
											<button data-id="clear" type="button"
												class="btn_deleteall HIDDEN">전체삭제</button>
										</div>
									</div>
								</div>
							</blockquote>
						</div>
					</div>
					<div class="options">
						<a href="#" id="info.subway.searchBox.optionBox" class="optionBox"
							title="옵션설정"> <span class="text">출발시간</span> <span
							class="arrow"></span>
						</a> <a href="#" id="info.subway.searchBox.dayBox"
							class="optionBox day" title="요일설정"> <span class="text">평일</span>
							<span class="arrow"></span>
						</a> <a href="#" id="info.subway.searchBox.hourBox"
							class="optionBox hour" title="시간설정"> <span class="text">시</span>
							<span class="arrow"></span>
						</a> <a href="#" id="info.subway.searchBox.minuteBox"
							class="optionBox minute" title="시간설정"> <span class="text">분</span>
							<span class="arrow"></span>
						</a>
						<ul id="info.subway.searchBox.listBox" class="listBox HIDDEN"></ul>
					</div>
					<div class="submitBox">
						<span id="info.subway.searchBox.submit" class="go">검색</span>
					</div>
					<div class="resultBox HIDDEN" id="info.subway.searchBox.resultBox">
						<!-- 2018-09-19 검색결과 추가 -->
						<strong class="tit_result">총 2건의 검색결과</strong>
						<!-- 2018-09-19 .DOTUM11 삭제 -->
						<a href="#none" class="endCheck"><span class="icon"></span>막차보기</a>
					</div>
				</div>
				<div id="info.subway.history"></div>
				<div id="info.subway.intro" class="Howto">
					<strong class="tit_intro">호선도 중요하지만,<br>시간이 더 중요하니까
					</strong>
					<p class="desc_intro">
						언제 출발해야 하는지부터<br>몇분에 도착할지까지, 한 눈에 확인하세요.
					</p>
				</div>
				<div id="info.subwayInfo" class="subwayInfo HIDDEN">
					<div class="SubwayRouteResultView">
						<h3 class="screen_out">지하철 경로</h3>
						<p class="firstTrainInfo HIDDEN">
							<span class="infoImg"><a href="#" class="infoClose">닫기</a></span>
						</p>
						<ul class="list"></ul>
					</div>
				</div>
			</div>
			<div id="info.my" class="FavoriteListView HIDDEN">
				<h2 class="screen_out">MY</h2>
				<div data-id="tab" class="FavoriteMethodType HIDDEN">
					<ul>
						<li id="my.subtab.favorite" class="ACTIVE"><a href="#none">즐겨찾기</a></li>
						<li id="my.subtab.static" class="INACTIVE"><a href="#none">집∙회사</a></li>
						<li id="my.subtab.review" class="INACTIVE"><a href="#none">평가</a></li>
					</ul>
				</div>

				<div class="favorite_interlock HIDDEN">
					<div id="my.favorite" class="favorite_result">
						<h3 class="screen_out">즐겨찾기</h3>
						<div class="favorite_directory">
							<div data-id="header"></div>
							<div data-id="list" class="FavoriteBodyList">
								<div data-id="banner" class="FavoriteBookmarkLink HIDDEN">
									<a href="#none" class="link_bookmark">다음지도 즐겨찾기를 카카오맵으로 <em>가져오기</em></a>
									<button data-id="bannerClose" type="button"
										class="ico_mypage bt_close">닫기</button>
								</div>
								<ul class="list_detail"></ul>
								<div id="info.my.favorite.page" data-id="pagination"
									class="pages HIDDEN">
									<div class="pageWrap">
										<button type="button" id="info.my.favorite.page.prev"
											class="prev disabled">이전</button>
										<a id="info.my.favorite.page.no1" class="INACTIVE" href="#">1</a>
										<a id="info.my.favorite.page.no2" class="INACTIVE" href="#">2</a>
										<a id="info.my.favorite.page.no3" class="INACTIVE" href="#">3</a>
										<a id="info.my.favorite.page.no4" class="INACTIVE" href="#">4</a>
										<a id="info.my.favorite.page.no5" class="INACTIVE" href="#">5</a>
										<button type="button" id="info.my.favorite.page.next"
											class="next">다음</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div id="my.static" class="favorite_homecorp HIDDEN">
						<h3 class="screen_out">집회사</h3>
						<ul data-id="staticList">
							<li class="FavoriteDirectoryItem">
								<div class="FavoriteInformationBundle">
									<span class="ico_homecorp home"></span>
									<!-- 아이콘 모양 변경시 클래스 추가 요청 -->
									<div class="info_directory">
										<div class="tit_directory">
											<strong data-id="link" class="txt_directory"><a
												href="#none" class="link_txt">집</a></strong>
										</div>
										<div class="desc_directory">
											<p data-id="name">주소를 등록하면 길찾기가 쉬워집니다.</p>
										</div>
									</div>
									<button type="button" data-id="more" class="btn_more">
										<span class="ico_mypage ico_more">더보기</span>
									</button>
									<!--
        <div class="box_btnmore" data-id="options">
            <a href="#" data-id="regist" class="link_favoradd">등록</a>
            <a href="#" data-id="remove" class="link_favoradd HIDDEN">삭제</a>
        </div>
        -->
								</div>
								<div data-id="setting" class="FavoriteSettingLayer HIDDEN">
									<ul class="list_opt">
										<li data-id="regist"><a href="#none">등록</a></li>
										<li data-id="remove" class="HIDDEN"><a href="#none">삭제</a></li>
									</ul>
								</div>
							</li>
							<li class="FavoriteDirectoryItem">
								<div class="FavoriteInformationBundle">
									<span class="ico_homecorp company"></span>
									<!-- 아이콘 모양 변경시 클래스 추가 요청 -->
									<div class="info_directory">
										<div class="tit_directory">
											<strong data-id="link" class="txt_directory"><a
												href="#none" class="link_txt">회사</a></strong>
										</div>
										<div class="desc_directory">
											<p data-id="name">주소를 등록하면 길찾기가 쉬워집니다.</p>
										</div>
									</div>
									<button type="button" data-id="more" class="btn_more">
										<span class="ico_mypage ico_more">더보기</span>
									</button>
									<!--
        <div class="box_btnmore" data-id="options">
            <a href="#" data-id="regist" class="link_favoradd">등록</a>
            <a href="#" data-id="remove" class="link_favoradd HIDDEN">삭제</a>
        </div>
        -->
								</div>
								<div data-id="setting" class="FavoriteSettingLayer HIDDEN">
									<ul class="list_opt">
										<li data-id="regist"><a href="#none">등록</a></li>
										<li data-id="remove" class="HIDDEN"><a href="#none">삭제</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>

					<div id="my.review" class="favorite_evaluation HIDDEN">
						<h3 class="screen_out">평가</h3>
						<div data-id="reviewHeader">
							<div data-id="reviewEmptyPage" class="FavoriteEmptyPage HIDDEN">
								<!-- <img src="" width="82" height="82" class="img_empty" alt="">2019-01-08_v2 삭제 -->
								<!-- 2018-09-04 케이스별 문구는 다름 -->
								<p class="desc_empty">작성한 평가가 없습니다.</p>
							</div>
							<div data-id="reviewFilters" class="info_result">
								<!--filterbox-->
							</div>
						</div>
						<div data-id="reviewList" class="FavoriteBodyList">
							<ul></ul>
						</div>
						<div id="my.review.page" class="pages HIDDEN">
							<div class="pageWrap">
								<button type="button" id="my.review.page.prev"
									class="prev disabled">이전</button>
								<a id="my.review.page.no1" class="ACTIVE" href="#">1</a> <a
									id="my.review.page.no2" class="INACTIVE" href="#">2</a> <a
									id="my.review.page.no3" class="INACTIVE" href="#">3</a> <a
									id="my.review.page.no4" class="INACTIVE" href="#">4</a> <a
									id="my.review.page.no5" class="INACTIVE" href="#">5</a>
								<button type="button" id="my.review.page.next" class="next">다음</button>
							</div>
						</div>
					</div>
				</div>
				<div id="info.my.intro" class="Howto JOIN HIDDEN">
					<strong class="tit_intro">자주 가는 장소는<br>등록해서 사용해요
					</strong>
					<p class="desc_intro">
						집이나 회사 등 자주 가는 장소는 즐겨찾기로 등록하여<br>언제 어디서나 쉽고 빠르게 확인하세요.
					</p>
					<a href="#none" class="link_my"> 로그인</a>
				</div>
			</div>

			<div id="info.issue" class="section" style="display: none">
				<div id="info.issue.place">
					<h5>
						폭우 피해지도 <span id="info.issue.place.issueCnt"></span>건
					</h5>
					<ul id="info.issue.place.list"></ul>
					<a id="info.issue.place.more" class="more" href="#">장소 더보기(<strong
						id="info.issue.place.more.count">0</strong>)
					</a>
				</div>
			</div>

			<div id="info.thememap" class="thememap section HIDDEN">
				<div id="info.thememap.theme" class="themeMapView HIDDEN">
					<div class="sectiontitle">
						<h5 class="themetit">테마</h5>
						<span class="cntwrap">(<em id="info.thememap.theme.cnt"
							class="cnt">0</em>건)
						</span>
						<ol id="info.thememap.theme.sort" class="Sort">
							<li class="first"><a href="#" class="recent ACTIVE">최신순</a></li>
							<li><a href="#" class="rank INACTIVE">인기순</a></li>
						</ol>
					</div>
					<ul id="info.thememap.theme.recommend" class="themeRecommend">
						<li class="recomTheme HIDDEN"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile80.uf.daum.net/image/240A704457761FD109A625"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">'쉬영갑서' 제주도 게스트하우스</a><span
							class="recomCount">제주 <strong>31</strong>곳
						</span></li>
						<li class="recomTheme"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile217.uf.daum.net/image/17775E4A4F4CE88F279E7B"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">달콤한 밤을 위한 재즈클럽</a><span
							class="recomCount">전국 <strong>11</strong>곳
						</span></li>
						<li class="recomTheme"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile102.uf.daum.net/image/2513DA35546C71723817AE"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">색다른 럭셔리, 글램핑 지도</a><span
							class="recomCount">전국 <strong>13</strong>곳
						</span></li>
					</ul>
					<ul id="info.thememap.theme.list" class="themeList"></ul>
				</div>
				<div id="info.thememap.placeview" class="themeMapPlaceView HIDDEN">
					<div class="title">
						<a href="#" class="share">공유하기</a> <span></span>
					</div>
					<div class="sectiontitle">
						<h5 class="placetit">장소</h5>
						<span class="cntwrap">(<em id="info.thememap.place.cnt"
							class="cnt">0</em>건)
						</span> <a href="#" class="themeMore">전체 테마 보기</a>
					</div>
					<ul id="info.thememap.place.list" class="themePlaceList"></ul>
					<div class="sectiontitle bottomtitle">
						<h5 class="themeplacetit">추천 테마지도</h5>
						<span class="cntwrap">(<em
							id="info.thememap.placetheme.cnt" class="cnt">0</em>건)
						</span> <a href="#" class="themeMore">전체 테마 보기</a>
					</div>
					<ul id="info.thememap.recommend.list" class="themeRecommendList">
						<li class="recomTheme HIDDEN"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile80.uf.daum.net/image/240A704457761FD109A625"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">'쉬영갑서' 제주도 게스트하우스</a><span
							class="recomCount">제주 <strong>31</strong>곳
						</span></li>
						<li class="recomTheme"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile217.uf.daum.net/image/17775E4A4F4CE88F279E7B"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">달콤한 밤을 위한 재즈클럽</a><span
							class="recomCount">전국 <strong>11</strong>곳
						</span></li>
						<li class="recomTheme"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile102.uf.daum.net/image/2513DA35546C71723817AE"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">색다른 럭셔리, 글램핑 지도</a><span
							class="recomCount">전국 <strong>13</strong>곳
						</span></li>
					</ul>
				</div>
			</div>
		</div>

		<div id="info.notice" class="notice">
			<h2 class="screen_out">공지사항</h2>
			<div class="noticeList">
				<ul>
					<li id="info.main.notice.text1"><span class="ico_notice">공지</span>
						<a href="https://kakaomap.tistory.com/329" target="_blank">폴더
							비공개 전환&amp;공개/비공개 설정 방법 안내</a></li>
				</ul>
				<a id="info.main.notice.more" href="http://kakaomap.tistory.com"
					target="_blank" class="link_more">더보기</a>
			</div>
		</div>
		<!-- 디자인상 info.footer와 그림자 차이가 있어 별도 영역으로 추가 -->
		<div id="info.my.footer" class="FavoriteFunctionToolBar HIDDEN"></div>

		<div id="info.footer" class="footer">
			<div class="WalkFunctionToolBarView HIDDEN">
				<a href="#none" data-id="print" class="print">경로인쇄</a> <a
					href="#none" data-id="alook" class="alook">경로 한눈에</a> <a
					href="#none" data-id="favorite" class="favorite"> <span
					class="ico_fav"> <span class="num">0</span>
				</span> 즐겨찾기
				</a>
			</div>
			<div class="BikeFunctionToolBarView HIDDEN">
				<a href="#none" data-id="print" class="print">경로인쇄</a> <a
					href="#none" data-id="alook" class="alook">경로 한눈에</a> <a
					href="#none" data-id="favorite" class="favorite"> <span
					class="ico_fav"> <span class="num">0</span>
				</span> 즐겨찾기
				</a>
			</div>
		</div>
		<div id="footer" class="Footer">
			<a class="xa" target="_blank"
				href="https://cs.kakao.com/helps?locale=ko&amp;service=101">고객센터</a>
			<span>|</span> <a class="xb" href="#none" data-pos="footer"
				data-channel="SEARCH_BOTTOM_MODIFYMAP">지도 정보 수정</a> <span>|</span> <a
				class="xc" href="#none" data-pos="footer"
				data-channel="SEARCH_BOTTOM_NEWPLACE">신규 장소 등록</a>
		</div>
	</div>

	<script type="text/javascript">
		try {
			document.getElementById('info.body').style.height = document.documentElement.clientHeight
					- 121 + 'px';
		} catch (e) {
		}
	</script>

	<div id="shadow" class="Shadow" style="height: 610px;">
		<div class="bar"></div>
		<span id="shadow.toggle" class="toggle"></span>
	</div>

	<div id="view" class="View" style="width: 599px; height: 610px;">
		<div class="info_roadview info_viewpast HIDDEN">
			<span class="txt_add" data-id="address"></span>
			<div class="wrap_date">
				<div class="info_date" data-id="leftView">
					<div class="wrap_opt" data-id="dateListContainer">
						<!-- opt_open 클래스로 활성화 -->
						<!-- 과거날짜 없을경우 HIDDEN클래스 적용해주세요 -->
						<strong class="screen_out">로드뷰 촬영일 목록</strong> <em
							class="screen_out">선택내용 :</em> <a href="#none" class="label"
							data-id="selectedDateBtn">2018년 10월</a> <em class="screen_out">선택옵션</em>
						<ul class="list_opt" data-id="dateList">
							<li><a href="#none" class="link_opt">2018년 10월</a></li>
							<li><a href="#none" class="link_opt">2018년 9월</a></li>
							<li><a href="#none" class="link_opt">2018년 8월</a></li>
							<li><a href="#none" class="link_opt">2018년 7월</a></li>
							<li><a href="#none" class="link_opt">2018년 6월</a></li>
						</ul>
					</div>
				</div>
				<div class="info_date" data-id="rightView">
					<div class="wrap_opt opt_latest" data-id="currentDateContainer">
						<!-- opt_open 클래스로 활성화 / 최신용 클래스 : opt_latest -->
						<strong class="screen_out">로드뷰 촬영일 목록</strong> <em
							class="screen_out">선택내용 :</em> <a href="#none" class="label"
							data-id="currentDate">2018년 07월(최근)</a> <em class="screen_out">선택옵션</em>
						<ul class="list_opt">
							<li><a href="#none">2018년 10월</a></li>
							<li><a href="#none">2018년 9월</a></li>
							<li><a href="#none">2018년 8월</a></li>
							<li><a href="#none">2018년 7월</a></li>
							<li><a href="#none">2018년 6월</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="set_mode">
				<button type="button" class="btn_mode on" data-id="overlapBtn">
					<!-- on클래스로 활성화 -->
					<span class="ico_roadview2 ico_overlay"></span> <span
						class="txt_btn">겹침</span>
				</button>
				<button type="button" class="btn_mode" data-id="splitBtn">
					<span class="ico_roadview2 ico_divide"></span> <span
						class="txt_btn">분할</span>
				</button>
			</div>
			<div class="slider_past">
				<button type="button" data-id="slider" class="btn_slider"
					style="left: 50%"></button>
				<!-- left:%로 슬라이더 이동해주세요 -->
			</div>
			<button type="button" class="btn_util btn_close"
				data-id="backToRoadviewBtn">
				<span class="ico_roadview2 ico_close"></span> <span
					class="tooltip_btn">과거사진비교 종료</span>
			</button>
		</div>
		<div class="info_roadview HIDDEN">
			<span class="txt_add" data-id="placeName"></span>
			<button type="button" class="btn_util btn_surround"
				data-id="nearRoadviewBtn">
				<span class="ico_roadview2"></span> <span class="txt_btn">주변
					로드뷰 보기</span>
			</button>
			<span class="txt_date"><span class="screen_out">스토어뷰 촬영
					월</span><span data-id="date"></span></span>
			<button type="button" class="btn_close" data-id="close">
				<span class="ico_roadview2"></span> <span class="tooltip_btn">스토어뷰
					종료</span>
			</button>
			<div class="navi_storeview HIDDEN">
				<div class="head_navi">
					<button type="button" class="btn_minimap" data-id="minimapBtn">
						<span class="ico_roadview2">미니맵 켜기</span>
					</button>
					<div class="box_opt">
						<strong class="screen_out">스토어뷰 이동할 장소 선택 목록</strong> <em
							class="screen_out">선택내용</em> <a href="#none" class="link_navi"
							data-id="depthMenuBtn">
							<!-- 클릭되면 navi_on 클래스 추가로 메뉴 열림 --> <span class="txt_depth1">여객터미널</span>
						<!-- opt_depth1 선택된 메뉴명 넣어주세요 --> <span class="txt_bar">&gt;</span>
							<span class="txt_depth1">2층</span>
						<!-- opt_depth2 선택된 메뉴명 넣어주세요 --> <span class="txt_bar">&gt;</span>
							<span class="txt_depth1">3뎁스메뉴입니당3뎁스</span>
						<!-- opt_depth3 선택된 메뉴명 넣어주세요 --> <span class="txt_bar">&gt;</span>
							<span class="txt_depth1">4뎁스</span>
						<!-- opt_depth4 선택된 메뉴명 넣어주세요 -->
						</a>
						<div class="wrap_list" data-id="depthMenu">
							<em class="screen_out">선택옵션</em>
							<ul class="list_opt opt_depth1">
								<li><a href="#none" class="link_opt">교통센터</a></li>
								<li class="on"><a href="#none" class="link_opt">교통센터</a></li>
								<li><a href="#none" class="link_opt">일이삼사오륙칠팔구십일이삼사오륙</a></li>
								<li><a href="#none" class="link_opt">일이삼사오륙칠팔구십일이삼사오륙</a></li>
								<li><a href="#none" class="link_opt">일이삼사오륙칠팔구십일이삼사오륙</a></li>
							</ul>
							<ul class="list_opt opt_depth2">
								<li><a href="#none" class="link_opt">지하 1층</a></li>
								<li><a href="#none" class="link_opt">1층</a></li>
								<li class="on"><a href="#none" class="link_opt">2층</a></li>
								<li><a href="#none" class="link_opt">3층</a></li>
								<li><a href="#none" class="link_opt">4층</a></li>
								<li><a href="#none" class="link_opt">5층</a></li>
								<li><a href="#none" class="link_opt">6층</a></li>
								<li><a href="#none" class="link_opt">7층</a></li>
								<li><a href="#none" class="link_opt">8층</a></li>
								<li><a href="#none" class="link_opt">9층</a></li>
								<li><a href="#none" class="link_opt">10층</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="view_minimap HIDDEN" data-id="minimap">
					<!-- HIDDEN으로 미니맵 노출/숨김 조절 -->
					<strong class="screen_out">미니맵</strong>
					<div id="miniZoomControl"
						class="MiniZoomControl MiniZoomControl_type2">
						<!-- 2019-05-23 : MiniZoomControl_type2 클래스 추가 -->
						<div class="wrap_zoom">
							<a href="#none" id="miniZoomControl.zoomin" data-type="zoomIn"
								class="zoomin"><span class="ico_roadview2 ico_zoom">확대</span></a>
							<a href="#none" id="miniZoomControl.zoomout" data-type="zoomOut"
								class="zoomout"><span class="ico_roadview2 ico_zoom">축소</span></a>
						</div>
						<a href="#none" id="miniZoomControl.reset" data-type="reset"
							class="reset disabled"><span class="ico_roadview2 ico_zoom">초기화</span></a>
					</div>
					<div data-id="minimapContainer" class="outer"
						style="width: 400px; height: 310px;">
						<div data-id="minimapPanel" style="left: 0; top: 0" class="panel">
							<div data-id="minimapWrapper" class="wrapper">
								<div data-id="markerContainer" class="cont"></div>
								<img src="" data-id="minimapImg" class="img_map">
							</div>
						</div>
					</div>
					<div class="info_minimap">
						<div class="scale_map">
							<strong class="screen_out">축적</strong> <span class="ico_scale"></span>
							<span class="txt_scale" data-id="mapScale"></span>
						</div>
						<div class="compass_map" style="transform: rotate(-180deg)"
							data-id="minimapCompass">
							<strong class="screen_out">나침반</strong> <span
								class="ico_roadview2 ico_compass"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="info_roadview HIDDEN">
			<span class="txt_add" data-id="address"></span>
			<div class="wrap_date">
				<div class="info_date" data-id="pastInfo">
					<!-- 과거사진 없을때 클래스 : date_none -->
					<span class="ico_roadview2 ico_time"></span>
					<div class="wrap_opt" data-id="dateListContainer">
						<!-- opt_open 클래스로 활성화 -->
						<strong class="screen_out">로드뷰 촬영일 목록</strong> <em
							class="screen_out">선택내용 :</em> <a href="#none" class="label"
							data-id="nowDateBtn"></a> <em class="screen_out">선택옵션</em>
						<ul class="list_opt HIDDEN">
							<!--
                    <li><a href="#none" class="link_opt">2018년 10월</a></li>
                    <li><a href="#none" class="link_opt">2018년 9월</a></li>
                    <li><a href="#none" class="link_opt">2018년 8월</a></li>
                    <li><a href="#none" class="link_opt">2018년 7월</a></li>
                    <li><a href="#none" class="link_opt">2018년 6월</a></li>
                    -->
						</ul>
					</div>
				</div>
			</div>
			<button type="button" class="btn_close" data-id="close">
				<span class="ico_roadview2"></span> <span class="tooltip_btn">로드뷰
					종료</span>
			</button>
		</div>
		<div class="view_past HIDDEN" style="width: 0px; height: 0px;">
			<div class="thumb_past" data-id="pastThumbViewContainer"
				style="width: 360px; height: 234px; display: block;">
				<video
					src="https://t1.daumcdn.net/localimg/localimages/07/common/pastview.mp4"
					width="100%" height="100%" data-id="guideVideo" class="video_guide"></video>
				<strong class="screen_out">소개 동영상 재생 바</strong>
				<div class="view_progress" data-id="videoProgress">
					<span class="bar_now" style="width: 0%" data-id="videoCurrent">
						<!-- width %로 진행바 핸들링 해주세요 --> <span>11</span>
					<!-- 재생 퍼센트 숫자 변경해주세요 --> % 재생됨
					</span>
				</div>
				<div class="wrap_coach HIDDEN" data-id="coachmark">
					<div class="check_coach">
						<input type="checkbox" id="chkCoach" class="inp_coach"
							data-id="coachmarkUnderstandBtn"> <label for="chkCoach"
							class="lab_coach"> <span class="ico_coach"></span> <span
							class="txt_lab">과거사진 비교 기능을 이해했습니다.</span>
						</label>
					</div>
					<button type="button" class="btn_close" data-id="coachmarkCloseBtn">
						<span class="ico_coach ico_close">닫기</span>
					</button>
				</div>
			</div>
			<div class="box_tool">
				<strong class="screen_out">과거사진 선택 목록</strong>
				<div class="group_past" data-id="timelineContainer">
					<!-- 2019-06-14 : 드래깅 진행중일 경우 drag_on클래스 추가로 1)기존 셀렉티드버튼 사이즈 기본으로, 2)드래깅용버튼 노출 -->
					<ul class="list_past" data-id="pastIconContainer">
					</ul>
					<button type="button" class="btn_util btn_drag" data-id="indicator">
						<!-- left값으로 위치 조절 해주세요 -->
						<span class="ico_drag"></span> <span class="tooltip_btn"
							data-id="indicatorDate"> 2011.03 </span>
					</button>
				</div>
				<div class="wrap_btn">
					<button type="button" class="btn_util btn_compare"
						data-id="diffBtn">
						<span class="ico_roadview2"></span> <span class="tooltip_btn">
							과거사진 비교 </span>
					</button>
					<button type="button" class="btn_util btn_close" data-id="closeBtn">
						<span class="ico_roadview2">닫기</span>
					</button>
				</div>
			</div>
		</div>
		<h2 class="screen_out">지도 영역</h2>
		<a href="#info.main" class="screen_out">이번 영역은 지도부분입니다. 스크린 리더
			사용자분께서는 현재 링크를 눌러주시면 본문 영역으로 넘어가실 수 있습니다</a>
		<div id="minimapEdge" class="HIDDEN guide_map"
			style="border-radius: 0px 2px 0px 0px;"></div>
		<div id="view.map" class="map map-skyview"
			style="width: 100%; height: 100%; bottom: 0px; left: 0px; top: 0px; border-radius: 0px;">
			<div id="localInfo" class="LocalInfo">
				<div id="localInfo.map" class="localinfomap">
					<h3 class="screen_out">접속지역</h3>
					<div class="province">
						<a id="localInfo.map.province" href="#" class="selectBox">경기도</a>
					</div>
					<div class="county">
						<a id="localInfo.map.county" href="#" class="selectBox">수원시
							영통구</a>
					</div>
					<div class="town">
						<a id="localInfo.map.town" href="#" class="selectBox">매탄4동</a>
					</div>
					<span class="txt_bar"></span>
					<div id="localInfo.map.weather" class="tempInfo">
						<div class="center">
							<!-- 임시 -->
							<img id="localInfo.map.weatherIcon" class="weatherImg" alt="구름조금"
								src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/weather/ico_weather2.png"
								title="구름조금" width="20">
							<div class="temper">13℃</div>
						</div>
					</div>
				</div>
			</div>
			<div id="localInfoList" class="LocalInfoList">
				<div id="localInfoList.province" class="box HIDDEN">
					<ul id="localInfoList.province.list" class="province"></ul>
				</div>
				<div id="localInfoList.county" class="box HIDDEN">
					<ul id="localInfoList.county.list" class="county"></ul>
				</div>
				<div id="localInfoList.town" class="box HIDDEN">
					<ul id="localInfoList.town.list" class="town"></ul>
				</div>
			</div>

			<div id="mapTypeControlHolder" class="MapTypeControlHolder">
				<div class="MapTypeControl">
					<h3 class="screen_out">지도타입</h3>
					<a href="#" class="roadmap ACTIVE">지도</a> <a href="#"
						class="skyview">스카이뷰</a>
				</div>
			</div>
			<div class="viewbuttons">
				<a data-id="roadview" class="rv" href="#"><span class="coach_rv">로드뷰</span></a>
				<div data-id="layer" class="lv">
					<a href="#" class="lv-accessibility"><span class="coach_tv">지도설정</span></a>
					<div data-id="layerMenu" class="layerMenu">
						<strong>지도설정</strong>
						<ul class="list_map_setting">
							<li data-index="0"><a href="#" class="traffic"><i></i>교통정보</a></li>
							<li data-index="1"><a href="#" class="cctv"><i></i>CCTV</a></li>
							<li data-index="2"><a href="#" class="accident"><i></i>사고·공사</a></li>
							<li><a href="#" class="bike"><i></i>자전거</a></li>
							<li><a href="#" class="terrain"><i></i>지형도</a></li>
							<li><a href="#" class="usedistrict"><i></i>지적편집도</a></li>
							<li><a href="#" class="bboundary"><i></i>법정경계</a></li>
							<li><a href="#" class="hboundary"><i></i>행정경계</a></li>
						</ul>
						<strong>대기설정</strong>
						<!-- weatherOptions 생성부분 연결-->
						<ul class="list_weather">
							<li data-type="wea"><a href="#">기온</a></li>
							<li data-type="khai"><a href="#">통합대기</a></li>
							<li data-type="pm10"><a href="#">미세먼지</a></li>
							<li data-type="pm25"><a href="#">초미세먼지</a></li>
							<li data-type="ysand"><a href="#">황사</a></li>
							<li data-type="o3"><a href="#">오존</a></li>
							<li data-type="no2"><a href="#">이산화질소</a></li>
							<li data-type="co"><a href="#">일산화탄소</a></li>
							<li data-type="so2"><a href="#">아황산가스</a></li>
						</ul>
					</div>
				</div>
			</div>


			<div id="tool" class="Tool">
				<h3 id="tool.map.btn" class="tit_tool">
					<a href="#none" class="btn_tool">내보내기</a>
				</h3>
				<div id="toolList" class="layer_tool">
					<a href="#" id="tool.map.print" class="print">인쇄하기</a> <a href="#"
						id="tool.map.save" class="save">이미지 저장하기</a> <a href="#"
						id="tool.map.copyurl" class="link">URL 복사</a> <a href="#"
						id="tool.map.copymap" class="html">HTML 태그 복사</a> <a href="#"
						id="tool.map.email" class="mail">메일로 공유</a>
				</div>
			</div>

			<form name="subway_scrap_form" method="post"
				action="./subway/subwayLinemapLink" target="_self">
				<input type="hidden" name="cityCode" value=""> <input
					type="hidden" name="STARTNAME" value=""> <input
					type="hidden" name="ENDNAME" value=""> <input type="hidden"
					name="STARTID" value=""> <input type="hidden" name="ENDID"
					value="">
			</form>

			<form name="subway_print_form" method="post"
				action=".subway/subwayLinemapPrint" target="_self">
				<input type="hidden" name="cityCode" value=""> <input
					type="hidden" name="STARTID" value=""> <input type="hidden"
					name="ENDID" value=""> <input type="hidden" name="jsonData"
					value=""> <input type="hidden" name="routeMapImageData"
					value="">
			</form>

			<form id="scrap_form" name="scrap_form" method="post"
				action="./etc/scrap.jsp" target="_self">
				<input type="hidden" name="x" value=""> <input type="hidden"
					name="y" value=""> <input type="hidden" name="scale"
					value=""> <input type="hidden" name="baseUrl" value="">
			</form>

			<div id="miniZoomControl"
				class="MiniZoomControl MiniZoomControl_type2 HIDDEN">
				<div class="wrap_zoom">
					<a href="#none" id="miniZoomControl.zoomin" class="zoomin"><span
						class="ico_roadview2 ico_zoom">확대</span>
					<!-- 2019-05-09 : 클래스 추가(ico_roadview2) --></a> <a href="#none"
						id="miniZoomControl.zoomout" class="zoomout"><span
						class="ico_roadview2 ico_zoom">축소</span>
					<!-- 2019-05-09 : 클래스 추가(ico_roadview2) --></a>
				</div>
			</div>
			<div id="view.mapContainer" class="cont_map"
				style="overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;); border-radius: 0px;">
				<div id="view.deco.frame" class="frame">
					<!-- 2019-05-28 : 미니맵영역 최초 노출시 HIDDEN처리 적용 제거 -->
					<!-- 최초 기본사이즈 노출상태시 , HIDDEN클래스 처리해주세요 -->
					<div id="view.deco.drag" class="drag HIDDEN">
						<span class="ico_roadview2 ico_drag"></span>
					</div>
					<!-- 2019-05-28 추가 : 드래그버튼 추가 -->
				</div>
				<div
					style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;">
					<div style="position: absolute;">
						<div style="position: absolute; z-index: 0;"></div>
						<div style="position: absolute; z-index: 1; left: 0px; top: 0px;">
							<img
								src="https://map2.daumcdn.net/map_2d_hd/2012tlq/L3/1867/914.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -11px; top: 529px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map2.daumcdn.net/map_2d_hd/2012tlq/L3/1868/914.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -11px; top: 273px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map2.daumcdn.net/map_2d_hd/2012tlq/L3/1869/914.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -11px; top: 17px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map2.daumcdn.net/map_2d_hd/2012tlq/L3/1870/914.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -11px; top: -239px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map3.daumcdn.net/map_2d_hd/2012tlq/L3/1867/915.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 245px; top: 529px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map3.daumcdn.net/map_2d_hd/2012tlq/L3/1868/915.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 245px; top: 273px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map3.daumcdn.net/map_2d_hd/2012tlq/L3/1869/915.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 245px; top: 17px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map3.daumcdn.net/map_2d_hd/2012tlq/L3/1870/915.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 245px; top: -239px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map0.daumcdn.net/map_2d_hd/2012tlq/L3/1867/916.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 501px; top: 529px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map1.daumcdn.net/map_2d_hd/2012tlq/L3/1867/917.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 757px; top: 529px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map0.daumcdn.net/map_2d_hd/2012tlq/L3/1868/916.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 501px; top: 273px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map1.daumcdn.net/map_2d_hd/2012tlq/L3/1868/917.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 757px; top: 273px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map0.daumcdn.net/map_2d_hd/2012tlq/L3/1869/916.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 501px; top: 17px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map1.daumcdn.net/map_2d_hd/2012tlq/L3/1869/917.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 757px; top: 17px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map0.daumcdn.net/map_2d_hd/2012tlq/L3/1870/916.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 501px; top: -239px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
								src="https://map1.daumcdn.net/map_2d_hd/2012tlq/L3/1870/917.png"
								alt="" draggable="false"
								style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 757px; top: -239px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
						</div>
						<div style="position: absolute; z-index: 1;"></div>
						<div
							style="position: absolute; z-index: 1; width: 599px; height: 610px;"></div>
						<div style="position: absolute; z-index: 1;">
							<svg version="1.1"
								style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -1198px; top: -1220px; width: 2995px; height: 3050px;"
								viewBox="0 0 2995 3050">
								<defs></defs>
								<path id="daum-maps-shape-0"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-1"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-2"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-3"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-4"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-5"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-6"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-7"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-8"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-9"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-10"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-11"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-12"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-13"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-14"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-15"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-16"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-17"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-18"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-19"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-20"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-21"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-22"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-23"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-24"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-25"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-26"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-27"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-28"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-29"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-30"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-31"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-32"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-33"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-34"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-35"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-36"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-37"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-38"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-39"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-40"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-41"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-42"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-43"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-44"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-45"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-46"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-47"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-48"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-49"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-50"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-51"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-52"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-53"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-54"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-55"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-56"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-57"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-58"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-59"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-60"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-61"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-62"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-63"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-64"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-65"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-66"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-67"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-68"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-69"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-70"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-71"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-72"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-73"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-74"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-75"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-76"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-77"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-78"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-79"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-80"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-81"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-82"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-83"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-84"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-85"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path>
								<path id="daum-maps-shape-86"
									style="stroke: rgb(119, 148, 182); stroke-opacity: 0.7; stroke-width: 1.5px; color: rgb(119, 148, 182); stroke-linecap: round; fill: rgb(240, 246, 255); fill-opacity: 0.5; fill-rule: evenodd; display: none;"></path></svg>
						</div>
						<div
							style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"></div>
					</div>
				</div>
				<div
					style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; bottom: 0px; color: rgb(0, 0, 0); right: 0px;">
					<div
						style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: right;">
						<div
							style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div>
						<div
							style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">50m</div>
					</div>
					<div style="margin: 0px 4px; float: right;">
						<a target="_blank" href="http://map.kakao.com/"
							title="Kakao 지도로 보시려면 클릭하세요."
							style="float: left; width: 32px; height: 10px;"><img
							src="https://t1.daumcdn.net/mapjsapi/images/2x/m_bi_b.png"
							alt="Kakao 지도로 이동"
							style="float: left; width: 32px; height: 10px; border: none;"></a>
						<div
							style="font: 11px/11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div>
					</div>
				</div>
				<div
					style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
				<div class="MapWalkerThere" style="display: none;">
					<div data-id="body" class="body ico_roadview2"></div>
					<span class="bubble_walker ico_roadview2" style=""></span>
				</div>
			</div>
			<div id="view.deco"
				class="FrameDecorator FrameDecorator_type2 HIDDEN">
				<!-- 마우스 오버시 : HIDDEN 제거 -->
				<button type="button" id="view.deco.toggle" class="toggle">
					<span class="ico_toggle">미니맵 노출</span>
				</button>
			</div>
			<div class="LayerLegend HIDDEN">
				<a href="#" class="legendBtn HIDDEN"></a>
				<div class="legendWrap HIDDEN legendMiniPosition">
					<div class="legendSelect">
						<a href="#" data-id="traffic" class="traffic SELECT">교통</a> <a
							href="#" data-id="bike" class="bike">자전거</a> <a href="#"
							data-id="air" class="air">날씨</a> <a href="#"
							data-id="usedistrict" class="usedistrict">지적편집도</a>
					</div>
					<a data-id="close" class="close" href="#"></a>
					<div class="TrafficLegend">
						<p class="date">
							기준 : <span data-id="date"></span>
						</p>
						<a data-id="refresh" class="refresh HIDDEN" href="#">새로고침</a>
						<ul class="bar">
							<li data-id="density1" class="density1"><a href="#"><span
									class="item_bar"></span>원활</a>
								<div data-id="tooltip1" class="tooltip tooltip1 HIDDEN">
									<dl>
										<dt>고속도로 :</dt>
										<dd>
											<strong>80</strong>km/h<span class="upArrow"></span>
										</dd>
										<dt>국도 :</dt>
										<dd>
											<strong>60</strong>km/h<span class="upArrow"></span>
										</dd>
										<dt>시내도로 :</dt>
										<dd>
											<strong>40</strong>km/h<span class="upArrow"></span>
										</dd>
									</dl>
								</div></li>
							<li data-id="density2" class="density2"><a href="#"><span
									class="item_bar"></span>서행</a>
								<div data-id="tooltip2" class="tooltip tooltip2 HIDDEN">
									<dl>
										<dt>고속도로 :</dt>
										<dd>
											<strong>50~80</strong>km/h
										</dd>
										<dt>국도 :</dt>
										<dd>
											<strong>40~60</strong>km/h
										</dd>
										<dt>시내도로 :</dt>
										<dd>
											<strong>20~40</strong>km/h
										</dd>
									</dl>
								</div></li>
							<li data-id="density3" class="density3"><a href="#"><span
									class="item_bar"></span>지체</a>
								<div data-id="tooltip3" class="tooltip tooltip3 HIDDEN">
									<dl>
										<dt>고속도로 :</dt>
										<dd>
											<strong>20~50</strong>km/h
										</dd>
										<dt>국도 :</dt>
										<dd>
											<strong>20~40</strong>km/h
										</dd>
										<dt>시내도로 :</dt>
										<dd>
											<strong>10~20</strong>km/h
										</dd>
									</dl>
								</div></li>
							<li data-id="density4" class="density4"><a href="#"><span
									class="item_bar"></span>정체</a>
								<div data-id="tooltip4" class="tooltip tooltip4 HIDDEN">
									<dl>
										<dt>고속도로 :</dt>
										<dd>
											<strong>20</strong>km/h<span class="downArrow"></span>
										</dd>
										<dt>국도 :</dt>
										<dd>
											<strong>20</strong>km/h<span class="downArrow"></span>
										</dd>
										<dt>시내도로 :</dt>
										<dd>
											<strong>10</strong>km/h<span class="downArrow"></span>
										</dd>
									</dl>
								</div></li>
							<li data-id="density5" class="density5"><a href="#"><span
									class="item_bar"></span>정보없음</a></li>
						</ul>
						<ul class="desc">
							<!-- <li class="clickable">속도 정보 라인 위를 클릭하면, 상세 정보 확인 가능</li> -->
							<li>시내 도로는 신호 정차 등의 이유로 실제속도와 다를 수 있습니다.</li>
						</ul>
					</div>
					<div data-id="BikeLegend" class="BikeLegend bikecate1">
						<ul class="bikeCategory">
							<li class="cate1"><a href="#" data-id="bikecate1">도로안내</a></li>
							<li class="cate2"><a href="#" data-id="bikecate2">진입로</a></li>
							<li class="cate3"><a href="#" data-id="bikecate3">편의시설</a></li>
						</ul>
						<div class="infocate"></div>
					</div>
					<div data-id="AirLegend" class="AirLegend aircate1">
						<div class="airCategory">
							<div class="inner_airCategory">
								<ul style="width: 600px">
									<li class="cate1"><a href="#" data-id="aircate1">통합대기지수</a></li>
									<li class="cate2"><a href="#" data-id="aircate2">미세먼지</a></li>
									<li class="cate3"><a href="#" data-id="aircate3">초미세먼지</a></li>
									<li class="cate4"><a href="#" data-id="aircate4">황사</a></li>
									<li class="cate5"><a href="#" data-id="aircate5">오존</a></li>
									<li class="cate6"><a href="#" data-id="aircate6">이산화질소</a></li>
									<li class="cate7"><a href="#" data-id="aircate7">일산화탄소</a></li>
									<li class="cate8"><a href="#" data-id="aircate8">아황산가스</a></li>
								</ul>
							</div>
						</div>
						<a href="#none" data-id="airmore" class="more">더보기</a>

						<div data-id="airtooltip1" class="tooltip tooltip1 HIDDEN">
							<strong>0~50</strong>
						</div>
						<div data-id="airtooltip2" class="tooltip tooltip2 HIDDEN">
							<strong>51~100</strong>
						</div>
						<div data-id="airtooltip3" class="tooltip tooltip3 HIDDEN">
							<strong>101~250</strong>
						</div>
						<div data-id="airtooltip4" class="tooltip tooltip4 HIDDEN">
							<strong>251~</strong>
						</div>
						<p class="date">
							기준 : <span data-id="airdate"></span>
						</p>
						<span class="supply"><a
							href="http://www.airkorea.or.kr/index" target="_blank"
							data-id="airsupply">환경부 한국환경공단</a></span>
						<ul class="bar">
							<li data-id="airdensity1" class="density1"><p>
									<span class="item_bar"></span>좋음<span class="txt_unit">0~50</span>
								</p></li>
							<li data-id="airdensity2" class="density2"><p>
									<span class="item_bar"></span>보통<span class="txt_unit">51~100</span>
								</p></li>
							<li data-id="airdensity3" class="density3"><p>
									<span class="item_bar"></span>나쁨<span class="txt_unit">101~250</span>
								</p></li>
							<li data-id="airdensity4" class="density4"><p>
									<span class="item_bar"></span>매우나쁨<span class="txt_unit">251~</span>
								</p></li>
							<li data-id="airdensity5" class="density5"><p>
									<span class="item_bar"></span>정보없음
								</p></li>
						</ul>
						<ul class="desc" data-id="airdesc">
							<li>실시간관측자료이며, 현지 사정에 의해 오차가 발생할 수 있습니다. <span class="unit"></span></li>
						</ul>
					</div>
					<div data-id="UsedistrictLegend"
						class="UsedistrictLegend usedistrictcate1">
						<ul class="usedistrictCategory">
							<li class="cate1"><a href="#" data-id="usedistrictcate1">지번·경계</a></li>
							<li class="cate2"><a href="#" data-id="usedistrictcate2">도로·철도</a></li>
							<li class="cate3"><a href="#" data-id="usedistrictcate3">국토계획·개발지구</a></li>
							<li class="cate4"><a href="#" data-id="usedistrictcate4">용도·개발</a></li>
						</ul>
						<a href="https://kakaomap.tistory.com/236" target="_blank"
							class="more">더보기</a>
						<div class="infocate"></div>
					</div>
				</div>
			</div>
			<div class="BikeRouteLegend HIDDEN">
				<ul class="wrap">
					<li class="normalRoad">일반도로</li>
					<li class="bikeRoad">자전거도로</li>
				</ul>
			</div>
			<div class="FlagWrap">
				<div class="Flag Fold">
					<div class="originWrap">
						<a title="드래그하여 지도에 놓으세요" class="origin"><i></i></a>
					</div>
					<div class="destWrap">
						<a title="드래그하여 지도에 놓으세요" class="dest"><i></i></a>
					</div>
					<div class="viaWrap">
						<a title="드래그하여 지도에 놓으세요" class="via"><i></i></a>
					</div>
				</div>
			</div>
			<div class="LocalAdBanner">
				<div data-id="wrapper">
					<div data-id="global" class="global HIDDEN banner">
						<a target="_blank" class="bannerHref" data-id="href" href="#">
							<img src="" width="223" height="46">
						</a>
						<div class="globalTag">
							<span class="tagHead"></span> <span class="tagText"></span> <span
								class="tagTail"></span>
						</div>
						<a target="_blank" href="#" class="where"></a> <a target="_blank"
							href="#" class="btnHref"></a> <a data-id="globalClose"
							class="close" href="#">close</a>
					</div>

					<div data-id="logical" class="logical HIDDEN banner">
						<a target="_blank" class="bannerHref" data-id="href" href="#">
							<img src="" width="223" height="46">
						</a>
						<div class="logicalTag">
							<span class="tagHead"></span> <span class="tagText"></span> <span
								class="tagTail"></span>
						</div>
						<a target="_blank" href="#" class="where"></a> <a target="_blank"
							href="#" class="btnHref"></a> <a data-id="logicalClose"
							class="close" href="#">close</a>
					</div>
				</div>
			</div>
			<div class="RoutePoiControlView RoutePoiControlView-via HIDDEN">
				<div class="cctvBtn">
					<button class="cctvImg">CCTV</button>
					<span class="coach_theme coach_cctv"></span>
				</div>
				<div class="accidentBtn">
					<button class="accidentImg">사고·공사</button>
					<span class="coach_theme coach_accident"></span>
				</div>
				<div class="gasBtn">
					<button class="gasImg">주유소</button>
					<span class="coach_theme coach_oil"></span>
				</div>
				<div class="serviceBtn">
					<button class="serviceImg">휴게소</button>
					<span class="coach_theme coach_rest"></span>
				</div>
				<div class="trafficBtn">
					<button class="trafficImg">교통정보</button>
					<span class="coach_theme coach_traffic"></span>
				</div>
			</div>
			<div class="ThemePoiControlView" style="width: 50px;">
				<h3>
					<a href="#none" class="btn_poi">주변</a>
				</h3>
				<div class="ThemePoiSubListView HIDDEN"></div>
				<div class="Wrap">
					<ul>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="bus"></span>버스
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="sub"></span>지하철
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="food"></span>음식점<span class="ico_arr"></span>
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="hotel"></span>숙박<span class="ico_arr"></span>
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="cafe"></span>카페
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="bank"></span>은행<span class="ico_arr"></span>
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="cvs"></span>편의점
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="mart"></span>대형마트
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="hospital"></span>병원약국<span class="ico_arr"></span>
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="hair"></span>미용실
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="oil"></span>주유정보<span class="ico_arr"></span>
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="park"></span>주차장
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="culture"></span>문화시설<span class="ico_arr"></span>
							</button></li>
						<li class="poi_item"><button type="button" class="btn_item">
								<span class="storeview"></span>스토어뷰
							</button></li>
						<li class="bottom"></li>
					</ul>
				</div>
				<strong class="screen_out">주변탐색 목록</strong>
			</div>
			<div class="MapControlView">
				<a href="#none" class="accessLocation"> <span class="screen_out">현위치</span>
					<span class="coach_accessLocation"></span>
				</a>
				<div data-id="zoomcontrol" class="zoom_control fold">
					<div
						style="width: 32px; border-radius: 3px; box-shadow: rgba(0, 0, 0, 0.15) 0px 2px 2px 0px;">
						<button draggable="false" title="확대"
							style="float: left; cursor: pointer; width: 32px; height: 32px; user-select: none; -webkit-user-drag: none; border-top: none; border-right: none; border-bottom: 1px solid rgb(226, 226, 226); border-left: none; border-image: initial; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&amp;quot;) -40px 0px/116px 264px no-repeat rgb(255, 255, 255); border-radius: 3px 3px 0px 0px;"></button>
						<div
							style="float: left; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_zoom_control.png&quot;) repeat; padding: 7px 0px; transition: height 0s ease 0s, margin 0.1s ease 0s;">
							<div
								style="cursor: pointer; position: relative; background-size: 116px 264px; transition: height 0.1s ease 0s; margin: 2px 0px; display: none;">
								<div
									style="position: absolute; width: 4px; height: 100%; background-color: rgb(51, 150, 255); left: 50%; margin: 0px 0px 0px -2px;">
									<div
										style="width: 4px; height: 2px; margin-bottom: -2px; bottom: 0px; position: absolute; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&amp;quot;) -50px -127px/116px 264px;"></div>
									<div
										style="width: 4px; height: 2px; margin-top: -2px; top: 0px; position: absolute; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&amp;quot;) -40px -100px/116px 264px;"></div>
								</div>
								<div
									style="position: absolute; background-color: rgb(204, 204, 204); transition: height 0.1s ease 0s; left: 50%; margin: 0px 0px 0px -2px; width: 4px; height: 16px;"></div>
								<div
									style="cursor: row-resize; position: absolute; width: 20px; height: 10px; margin: -4px 0px 0px -10px; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&amp;quot;) -40px -80px/116px 264px; left: 50%; transition: top 0.1s ease 0s; top: 16px;"></div>
							</div>
						</div>
						<button draggable="false" title="축소"
							style="float: left; cursor: pointer; width: 32px; height: 32px; user-select: none; -webkit-user-drag: none; border-top: 1px solid rgb(226, 226, 226); border-right: none; border-bottom: none; border-left: none; border-image: initial; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/2x/control.png&amp;quot;) -40px -32px/116px 264px no-repeat rgb(255, 255, 255); border-radius: 0px 0px 3px 3px; margin: -1px 0px 0px;"></button>
						<div
							style="position: absolute; margin: 41px 0px 0px -30px; background-size: 116px 264px; display: none;"></div>
						<button type="button" class="btn_zoom_coach">슬라이더 토글</button>
						<div style="clear: both;"></div>
					</div>
				</div>
				<div data-id="tools" class="tools">
					<h3 class="screen_out">측정</h3>
					<a data-id="distance" class="distance" href="#"><span
						class="coach_distance">거리재기</span></a> <a data-id="area" class="area"
						href="#"><span class="coach_area">면적재기</span></a> <a
						data-id="radius" class="radius" href="#"><span
						class="coach_radius">반경재기</span></a> <a data-id="clear" class="clear"
						href="#"><span class="coach_clear">지우기</span></a>
				</div>
				<div data-id="tileTool" class="tileTool HIDDEN">
					<a data-id="extension" class="extension" href="#">확장검색</a> <span
						data-id="extensionText" class="extensionText HIDDEN"></span>
				</div>
				<div class="add_place add_on">
					<a data-id="newplace" href="#" class="link_new"><span
						class="coach_newplace">신규 장소 등록</span></a>
				</div>
			</div>
		</div>

		<div id="view.roadview" class="roadview">
			<canvas id="renderview_5557" width="1" height="1"></canvas>
			<div id="main_layer_6128"></div>
			<div id="fc_layer_6129">
				<div style="position: absolute; display: none;">
					<div id="toastGuideBox_6129">
						<div id="toastGuideBack_6129"></div>
						<p id="toastGuideText_6129"></p>
					</div>
				</div>
				<div style="position: absolute; display: none;">
					<div id="toastGuideBox_6131">
						<div id="toastGuideBack_6131"></div>
						<p id="toastGuideText_6131"></p>
					</div>
				</div>
				<div style="position: absolute; display: none;">
					<div id="toastGuideBox_6132">
						<div id="toastGuideBack_6132"></div>
						<p id="toastGuideText_6132"></p>
					</div>
				</div>
			</div>
		</div>
		<div id="view.subway" class="subway">

			<div id="localInfo.subway.searchBox" class="localinfosubway">
				<!-- 2018-09-19 지하철 선택상자 수정 시작 -->
				<div class="subwayRegion">
					<strong class="screen_out">지역 지하철 선택상자</strong> <em
						class="screen_out">선택내용 :</em> <span class="box_selected"><a
						href="#none" class="btn_selected"
						id="localInfo.subway.searchBox.regionBtn">수도권</a></span> <em
						class="screen_out">선택옵션</em>
					<ul id="localInfo.subway.searchBox.region" class="list_opt HIDDEN">
						<li class="seoul"><a href="#">수도권</a></li>
						<li class="busan"><a href="#">부산</a></li>
						<li class="daegu"><a href="#">대구</a></li>
						<li class="gwangju"><a href="#">광주</a></li>
						<li class="daejeon"><a href="#">대전</a></li>
					</ul>
				</div>
				<div class="subwayExpress">
					<a href="#">급행</a>
				</div>
				<!-- // 2018-09-19 지하철 선택상자 수정 끝 -->
			</div>


			<div id="subway.tool" class="Tool">
				<h3 class="tit_tool">
					<a href="#none" class="btn_tool" id="subwayExportBtn">내보내기</a>
				</h3>
				<div class="layer_tool" id="subwayExportMenu">
					<a href="#" id="subway.tool.map.print" class="print">인쇄하기</a> <a
						href="#" id="subway.tool.map.save" class="save">이미지 저장하기</a> <a
						href="#" id="subway.tool.map.copyurl" class="copyUrl"><span
						class="screen_out">노선</span> URL 복사</a> <a href="#"
						id="subway.tool.map.copymap" class="copyMap"><span
						class="screen_out">노선도</span><span class="map">지도 </span>HTML 태그
						복사</a>
					<!-- <a href="#" id="tool.map.link" class="link">노선도 퍼가기</a> -->
				</div>
			</div>



			<div id="view.subway.route" class="subwayRouteView">
				<div class="subway-container">
					<div class="subway-canvas-container"></div>
					<div class="subway-info-container">
						<!-- 출발 플래그 -->
						<div class="subway-info-pin subway-info-pin-departure hide"
							id="subwayDeparturePin">
							<span class="screen_out">출발역 포인터</span> <span
								class="subway-info-pin-controller"> <a
								href="javascript:;" class="subway-info-pin-close"> <span
									class="screen_out">경로 지우기</span>
							</a> <span class="subway-info-pin-tooltip">끌어서 출발지 변경</span>
							</span>
						</div>
						<!-- 도착 플래그 -->
						<div class="subway-info-pin subway-info-pin-arrival hide"
							id="subwayArrivalPin">
							<span class="screen_out">도착역 포인터</span> <span
								class="subway-info-pin-controller"> <a
								href="javascript:;" class="subway-info-pin-close"> <span
									class="screen_out">경로 지우기</span>
							</a> <span class="subway-info-pin-tooltip">끌어서 도착지 변경</span>
							</span>
						</div>
					</div>
				</div>
			</div>


			<div id="subwayLegend" class="SubwayLegend">
				<div class="slide">
					<div class="list" id="subwayLegend.slide.list">
						<ul class="seoul HIDDEN">
							<li class="line1 line1-INACTIVE" title="인천,신창-소요산"><a
								href="#">1호선</a></li>
							<li class="line2 line2-INACTIVE" title="시청-시청"><a href="#">2호선</a></li>
							<li class="line3 line3-INACTIVE" title="오금-대화"><a href="#">3호선</a></li>
							<li class="line4 line4-INACTIVE" title="당고개-오이도"><a href="#">4호선</a></li>
							<li class="line5 line5-INACTIVE" title="상일,마천-방화"><a
								href="#">5호선</a></li>
							<li class="line6 line6-INACTIVE" title="봉화산-응암"><a href="#">6호선</a></li>
							<li class="line7 line7-INACTIVE" title="부평구청-장암"><a href="#">7호선</a></li>
							<li class="line8 line8-INACTIVE" title="모란-암사"><a href="#">8호선</a></li>
							<li class="line9 line9-INACTIVE" title="개화-종합운동장"><a
								href="#">9호선</a></li>
							<li class="line33 line33-INACTIVE" title="광운대,청량리-춘천"><a
								href="#">경춘</a></li>
							<li class="line26 line26-INACTIVE" title="용문-문산"><a href="#">경의중앙</a></li>
							<li class="line22 line22-INACTIVE" title="국제업무지구-계양"><a
								href="#">인천 1</a></li>
							<li class="line39 line39-INACTIVE" title="검단오류-운연"><a
								href="#">인천 2</a></li>
							<li class="line27 line27-INACTIVE" title="인천국제공항-서울역"><a
								href="#">공항</a></li>
							<li class="line34 line34-INACTIVE" title="강남-광교"><a href="#">신분당</a></li>
							<li class="line36 line36-INACTIVE" title="발곡-탑석"><a href="#">의정부</a></li>
							<li class="line37 line37-INACTIVE" title="기흥-에버랜드"><a
								href="#">에버라인</a></li>
							<li class="line38 line38-INACTIVE" title="용유-인천국제공항"><a
								href="#">자기부상</a></li>
							<li class="line40 line40-INACTIVE" title="판교-여주"><a href="#">경강</a></li>
							<li class="line41 line41-INACTIVE" title="북한산우이-신설"><a
								href="#">우이신설</a></li>
							<li class="line42 line42-INACTIVE" title="소사-원시"><a href="#">서해</a></li>
							<li class="line43 line43-INACTIVE" title="양촌-김포공항"><a
								href="#">김포골드</a></li>
							<li class="line44 line44-INACTIVE" title="청량리-인천"><a
								href="#">수인분당</a></li>
						</ul>
						<ul class="busan HIDDEN">
							<li class="line1 line1-INACTIVE" title="노포-신평"><a href="#">1호선</a></li>
							<li class="line2 line2-INACTIVE" title="양산-장산"><a href="#">2호선</a></li>
							<li class="line3 line3-INACTIVE" title="대저-수영"><a href="#">3호선</a></li>
							<li class="line4 line4-INACTIVE" title="미남-안평"><a href="#">4호선</a></li>
							<li class="line10 line10-INACTIVE" title="가야대-사상"><a
								href="#">경전철</a></li>
							<li class="line11 line11-INACTIVE" title="부전-일광"><a href="#">동해선</a></li>
						</ul>
						<ul class="daegu HIDDEN">
							<li class="line1 line1-INACTIVE" title="안심-설화명곡"><a href="#">1호선</a></li>
							<li class="line2 line2-INACTIVE" title="영남대-문양"><a href="#">2호선</a></li>
							<li class="line3 line3-INACTIVE" title="용지-칠곡경대병원"><a
								href="#">3호선</a></li>
						</ul>
						<ul class="gwangju HIDDEN">
							<li class="line1 line1-INACTIVE" title="평동-녹동"><a href="#">1호선</a></li>
						</ul>
						<ul class="daejeon HIDDEN">
							<li class="line1 line1-INACTIVE" title="반석-판암"><a href="#">1호선</a></li>
						</ul>
					</div>
					<button type="button" class="btn_slide prev">이전</button>
					<button type="button" class="btn_slide next">다음</button>
				</div>
			</div>

			<div id="subwayLegend.zoom" class="subwayLegendZoom zoom_1">
				<a href="#" id="subwayLegend.zoom.in" class="zoomin">노선도확대</a> <a
					href="#" id="subwayLegend.zoom.out" class="zoomout">노선도축소</a>
			</div>
		</div>



		<div id="subwayoverviewer" class="Subwayoverviewer HIDDEN">
			<img id="subwayoverviewer.image" class="SubwayoverviewerImage" alt=""
				src="//i1.daumcdn.net/dmaps/defaultimg/transparent.gif">
			<div id="subwayoverviewer.walker" class="SubwayoverviewerWalker">
				<div></div>
				<span></span>
			</div>
		</div>

		<img id="failflash" alt="일시적 장애로 인해 로드뷰를 확인할 수 없습니다."
			class="failflash HIDDEN" usemap="#failFlashMap"
			src="//i1.daumcdn.net/dmaps/apis/transparent.gif">

		<map name="failFlashMap">
			<area id="failFlashMap.close" alt="닫기" shape="rect"
				coords="270, 5, 292, 20" href="#">
			<area id="failFlashMap.mapview" alt="지도보기" shape="rect"
				coords="108, 130, 190, 158" href="#">
		</map>
	</div>

	<ul id="regionList" class="RegionList"></ul>

	<div id="shareUrl" class="ShareUrl HIDDEN">
		<div class="social_comm_p">
			<div class="sns_comm_p share_layer hide">
				<strong class="screen_out">SNS로 공유하기</strong>
				<button type="button" class="btn_close">
					<span class="img_social ico_close">닫기</span>
				</button>
				<ul class="list_sns">
					<li><a href="#none" class="link_sns" data-handler="kakaotalk"><span
							class="img_social ico_sns_kt">카톡</span><strong class="tit_sns">카카오톡</strong></a></li>
					<li><a href="#none" class="link_sns" data-handler="kakaostory"><span
							class="img_social ico_sns_ks">카스</span><strong class="tit_sns">카카오스토리</strong></a></li>
					<li><a href="#none" class="link_sns" data-handler="facebook"><span
							class="img_social ico_sns_fb">페북</span><strong class="tit_sns">페이스북</strong></a></li>
					<li><a href="#none" class="link_sns" data-handler="twitter"><span
							class="img_social ico_sns_tw">트윗</span><strong class="tit_sns">트위터</strong></a></li>
					<li><a href="#none" class="link_sns" data-handler="daumcafe"><span
							class="img_social ico_sns_cafe">카페</span><strong class="tit_sns">카페</strong></a></li>
					<li><a href="#none" class="link_sns" data-handler="mail"><span
							class="img_social ico_sns_mail">메일</span><strong class="tit_sns">메일</strong></a></li>
				</ul>
				<div class="sns_url">
					<div class="sns_copyurl">
						<a href="#none" class="link_copyurl"><span class="txt_url">https://map.kakao.com/?nil_profile=title&amp;nil_src=local</span><span
							class="txt_copy">URL복사</span></a>
					</div>
				</div>
			</div>
			<div class="sns_comm_p copyurl_layer hide">
				<div class="inner_copyurl">
					<p class="desc_copyurl">
						주소가 복사되었습니다.<br>원하는곳에 붙여넣기(Ctrl+V)해주세요.
					</p>
				</div>
				<button type="button" class="btn_close">
					<span class="img_social ico_close">닫기</span>
				</button>
			</div>
		</div>
	</div>

	<div id="dimmedLayer" class="DimmedLayer HIDDEN"></div>

	<div id="homeRegInfo" class="HomeRegInfo HIDDEN"></div>

	<div id="validPlaceInfo" class="ValidPlaceInfo HIDDEN">
		<a id="ValidPlaceInfo.closeNDelete" class="closeNDelete"></a>
	</div>

	<div class="moreGroupview HIDDEN" id="moreGroupview">자세히 보기</div>

	<div id="roadviewInfoBoxQuickhelp"
		class="RoadviewInfoBox-quickhelp HIDDEN"></div>

	<div id="titleSystemTooltip" class="titleSystemTooltip HIDDEN"></div>

	<script type="text/javascript"
		src="//s1.daumcdn.net/svc/original/U0301/cssjs/JSON-js/fc535e9cc8/json2.min.js"></script>
	<script type="text/javascript"
		src="//t1.daumcdn.net/tiara/js/v1/tiara.min.js"></script>

	<!--[if gt IE 8]><!-->
	<script type="text/javascript"
		src="//s1.daumcdn.net/svc/attach/U03/cssjs/mapweb/1500538479259/Chart.min.js"></script>
	<script type="text/javascript"
		src="//t1.daumcdn.net/kakaomapweb/cssjs/hls-0.12.4.min.js"></script>
	<!--<![endif]-->

	<script type="text/javascript"
		src="//mk.kakaocdn.net/dn/platformfe/agent/v1_6_1/agent.js"></script>

	<script type="text/javascript"
		src="//t1.daumcdn.net/daumtop_deco/socialshare/pcsocialshare_standalone-1.5.9.merged.js"></script>

	<script type="text/javascript"
		src="//s1.daumcdn.net/dmaps/local/require-2.1.0.js"></script>
	<script type="text/javascript"
		src="//s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.8.1.min.js"></script>
	<script type="text/javascript"
		src="//s1.daumcdn.net/svc/original/U0301/cssjs/jquery/plugin/jquery.cookie-1.0.0.min.js"></script>
	<script type="text/javascript"
		src="https://ssl.daumcdn.net/dmaps/map_js_init/v3.js"></script>
	<script charset="UTF-8"
		src="https://t1.daumcdn.net/mapjsapi/js/main/4.3.3/v3.js"></script>
	<script type="text/javascript"
		src="//s1.daumcdn.net/dmaps/mapapiv3/congnamul.js"></script>
	<script type="text/javascript" src="./iptargeting/location"></script>
	<script type="text/javascript">
		// 기본값: 서울시청
		window.t_mapx = window.t_mapx || '';
		window.t_mapy = window.t_mapy || '';
		window.t_address = window.t_address || '';
		window.t_regionid = window.t_regionid;
		window.ENV = 'PROD';
		window.isFlashEnv = false;

		try {
			// 뉴티아라 초기화
			window.TiaraTracker
					&& TiaraTracker
							.getInstance()
							.init(
									{
										svcDomain : window.location.host
												.indexOf('map.kakao.com') == 0 ? 'map.kakao.com'
												: 'map.devel.kakao.com',
										development : window.ENV === 'PROD' ? 'production'
												: 'dev'
									});
		} catch (e) {
		}
	</script>



	<!-- 지역광고. *https 지원 안함, 추가 운영계획 없어 주석처리
<script type="text/javascript" src="https://ssl.daumcdn.net/dmaps/map_js_init/localAd/Ad_v2.js"></script> -->

	<script>
		// 캔버스 지하철 노선도 초기화
		window.kakaosubway = {
			activeArea : null
		};
	</script>
	<script type="text/javascript"
		src="https://t1.daumcdn.net/mapjsapi/bundle/prod/panorama.js"></script>
	<script type="text/javascript"
		src="https://t1.daumcdn.net/kakaomapweb/subway/linemap/canvas/prod/subway.bundle.js"></script>


	<script type="text/javascript" charset="UTF-8"
		src="https://t1.daumcdn.net/kas/static/na.min.js"></script>

	<script type="text/javascript"
		src="//t1.daumcdn.net/kakaomapweb/map/202103111401750/app.js"></script>

	<script type="text/javascript">
		jQuery.noConflict();
		require
				.config({
					baseUrl : 'js/app',
					deps : [ 'main' ],
					config : {
						main:{
							params : {
								"nil_profile" : "title",
								"nil_src" : "local"
							} || {},
							options : {
								isLogin : 0,
								isMapUser : 0,
								loginUrl : "https://accounts.kakao.com/login/kakaomap?continue=",
								logoutUrl : "https://accounts.kakao.com/logout?continue=",
								notices : [],
								hcodeList : [ {
									id : "11",
									name : "서울"
								}, {
									id : "26",
									name : "부산"
								}, {
									id : "27",
									name : "대구"
								}, {
									id : "28",
									name : "인천"
								}, {
									id : "29",
									name : "광주"
								}, {
									id : "30",
									name : "대전"
								}, {
									id : "31",
									name : "울산"
								}, {
									id : "36",
									name : "세종"
								}, {
									id : "41",
									name : "경기"
								}, {
									id : "42",
									name : "강원"
								}, {
									id : "43",
									name : "충북"
								}, {
									id : "44",
									name : "충남"
								}, {
									id : "45",
									name : "전북"
								}, {
									id : "46",
									name : "전남"
								}, {
									id : "47",
									name : "경북"
								}, {
									id : "48",
									name : "경남"
								}, {
									id : "50",
									name : "제주"
								}, {
									id : "11680",
									name : "강남구"
								}, {
									id : "11740",
									name : "강동구"
								}, {
									id : "11305",
									name : "강북구"
								}, {
									id : "11500",
									name : "강서구"
								}, {
									id : "11620",
									name : "관악구"
								}, {
									id : "11215",
									name : "광진구"
								}, {
									id : "11530",
									name : "구로구"
								}, {
									id : "11545",
									name : "금천구"
								}, {
									id : "11350",
									name : "노원구"
								}, {
									id : "11320",
									name : "도봉구"
								}, {
									id : "11230",
									name : "동대문구"
								}, {
									id : "11590",
									name : "동작구"
								}, {
									id : "11440",
									name : "마포구"
								}, {
									id : "11410",
									name : "서대문구"
								}, {
									id : "11650",
									name : "서초구"
								}, {
									id : "11200",
									name : "성동구"
								}, {
									id : "11290",
									name : "성북구"
								}, {
									id : "11710",
									name : "송파구"
								}, {
									id : "11470",
									name : "양천구"
								}, {
									id : "11560",
									name : "영등포구"
								}, {
									id : "11170",
									name : "용산구"
								}, {
									id : "11380",
									name : "은평구"
								}, {
									id : "11110",
									name : "종로구"
								}, {
									id : "11140",
									name : "중구"
								}, {
									id : "11260",
									name : "중랑구"
								}, {
									id : "26440",
									name : "강서구"
								}, {
									id : "26410",
									name : "금정구"
								}, {
									id : "26710",
									name : "기장군"
								}, {
									id : "26290",
									name : "남구"
								}, {
									id : "26170",
									name : "동구"
								}, {
									id : "26260",
									name : "동래구"
								}, {
									id : "26230",
									name : "부산진구"
								}, {
									id : "26320",
									name : "북구"
								}, {
									id : "26530",
									name : "사상구"
								}, {
									id : "26380",
									name : "사하구"
								}, {
									id : "26140",
									name : "서구"
								}, {
									id : "26500",
									name : "수영구"
								}, {
									id : "26470",
									name : "연제구"
								}, {
									id : "26200",
									name : "영도구"
								}, {
									id : "26110",
									name : "중구"
								}, {
									id : "26350",
									name : "해운대구"
								}, {
									id : "27200",
									name : "남구"
								}, {
									id : "27290",
									name : "달서구"
								}, {
									id : "27710",
									name : "달성군"
								}, {
									id : "27140",
									name : "동구"
								}, {
									id : "27230",
									name : "북구"
								}, {
									id : "27170",
									name : "서구"
								}, {
									id : "27260",
									name : "수성구"
								}, {
									id : "27110",
									name : "중구"
								}, {
									id : "28710",
									name : "강화군"
								}, {
									id : "28245",
									name : "계양구"
								}, {
									id : "28200",
									name : "남동구"
								}, {
									id : "28140",
									name : "동구"
								}, {
									id : "28177",
									name : "미추홀구"
								}, {
									id : "28237",
									name : "부평구"
								}, {
									id : "28260",
									name : "서구"
								}, {
									id : "28185",
									name : "연수구"
								}, {
									id : "28720",
									name : "옹진군"
								}, {
									id : "28110",
									name : "중구"
								}, {
									id : "29200",
									name : "광산구"
								}, {
									id : "29155",
									name : "남구"
								}, {
									id : "29110",
									name : "동구"
								}, {
									id : "29170",
									name : "북구"
								}, {
									id : "29140",
									name : "서구"
								}, {
									id : "30230",
									name : "대덕구"
								}, {
									id : "30110",
									name : "동구"
								}, {
									id : "30170",
									name : "서구"
								}, {
									id : "30200",
									name : "유성구"
								}, {
									id : "30140",
									name : "중구"
								}, {
									id : "31140",
									name : "남구"
								}, {
									id : "31170",
									name : "동구"
								}, {
									id : "31200",
									name : "북구"
								}, {
									id : "31710",
									name : "울주군"
								}, {
									id : "31110",
									name : "중구"
								}, {
									id : "36110",
									name : ""
								}, {
									id : "41820",
									name : "가평군"
								}, {
									id : "41280",
									name : "고양시"
								}, {
									id : "41281",
									name : "고양시 덕양구"
								}, {
									id : "41285",
									name : "고양시 일산동구"
								}, {
									id : "41287",
									name : "고양시 일산서구"
								}, {
									id : "41290",
									name : "과천시"
								}, {
									id : "41210",
									name : "광명시"
								}, {
									id : "41610",
									name : "광주시"
								}, {
									id : "41310",
									name : "구리시"
								}, {
									id : "41410",
									name : "군포시"
								}, {
									id : "41570",
									name : "김포시"
								}, {
									id : "41360",
									name : "남양주시"
								}, {
									id : "41250",
									name : "동두천시"
								}, {
									id : "41190",
									name : "부천시"
								}, {
									id : "41130",
									name : "성남시"
								}, {
									id : "41135",
									name : "성남시 분당구"
								}, {
									id : "41131",
									name : "성남시 수정구"
								}, {
									id : "41133",
									name : "성남시 중원구"
								}, {
									id : "41110",
									name : "수원시"
								}, {
									id : "41113",
									name : "수원시 권선구"
								}, {
									id : "41117",
									name : "수원시 영통구"
								}, {
									id : "41111",
									name : "수원시 장안구"
								}, {
									id : "41115",
									name : "수원시 팔달구"
								}, {
									id : "41390",
									name : "시흥시"
								}, {
									id : "41270",
									name : "안산시"
								}, {
									id : "41273",
									name : "안산시 단원구"
								}, {
									id : "41271",
									name : "안산시 상록구"
								}, {
									id : "41550",
									name : "안성시"
								}, {
									id : "41170",
									name : "안양시"
								}, {
									id : "41173",
									name : "안양시 동안구"
								}, {
									id : "41171",
									name : "안양시 만안구"
								}, {
									id : "41630",
									name : "양주시"
								}, {
									id : "41830",
									name : "양평군"
								}, {
									id : "41670",
									name : "여주시"
								}, {
									id : "41800",
									name : "연천군"
								}, {
									id : "41370",
									name : "오산시"
								}, {
									id : "41460",
									name : "용인시"
								}, {
									id : "41463",
									name : "용인시 기흥구"
								}, {
									id : "41465",
									name : "용인시 수지구"
								}, {
									id : "41461",
									name : "용인시 처인구"
								}, {
									id : "41430",
									name : "의왕시"
								}, {
									id : "41150",
									name : "의정부시"
								}, {
									id : "41500",
									name : "이천시"
								}, {
									id : "41480",
									name : "파주시"
								}, {
									id : "41220",
									name : "평택시"
								}, {
									id : "41650",
									name : "포천시"
								}, {
									id : "41450",
									name : "하남시"
								}, {
									id : "41590",
									name : "화성시"
								}, {
									id : "42150",
									name : "강릉시"
								}, {
									id : "42820",
									name : "고성군"
								}, {
									id : "42170",
									name : "동해시"
								}, {
									id : "42230",
									name : "삼척시"
								}, {
									id : "42210",
									name : "속초시"
								}, {
									id : "42800",
									name : "양구군"
								}, {
									id : "42830",
									name : "양양군"
								}, {
									id : "42750",
									name : "영월군"
								}, {
									id : "42130",
									name : "원주시"
								}, {
									id : "42810",
									name : "인제군"
								}, {
									id : "42770",
									name : "정선군"
								}, {
									id : "42780",
									name : "철원군"
								}, {
									id : "42110",
									name : "춘천시"
								}, {
									id : "42190",
									name : "태백시"
								}, {
									id : "42760",
									name : "평창군"
								}, {
									id : "42720",
									name : "홍천군"
								}, {
									id : "42790",
									name : "화천군"
								}, {
									id : "42730",
									name : "횡성군"
								}, {
									id : "43760",
									name : "괴산군"
								}, {
									id : "43800",
									name : "단양군"
								}, {
									id : "43720",
									name : "보은군"
								}, {
									id : "43740",
									name : "영동군"
								}, {
									id : "43730",
									name : "옥천군"
								}, {
									id : "43770",
									name : "음성군"
								}, {
									id : "43150",
									name : "제천시"
								}, {
									id : "43745",
									name : "증평군"
								}, {
									id : "43750",
									name : "진천군"
								}, {
									id : "43110",
									name : "청주시"
								}, {
									id : "43111",
									name : "청주시 상당구"
								}, {
									id : "43112",
									name : "청주시 서원구"
								}, {
									id : "43114",
									name : "청주시 청원구"
								}, {
									id : "43113",
									name : "청주시 흥덕구"
								}, {
									id : "43130",
									name : "충주시"
								}, {
									id : "44250",
									name : "계룡시"
								}, {
									id : "44150",
									name : "공주시"
								}, {
									id : "44710",
									name : "금산군"
								}, {
									id : "44230",
									name : "논산시"
								}, {
									id : "44270",
									name : "당진시"
								}, {
									id : "44180",
									name : "보령시"
								}, {
									id : "44760",
									name : "부여군"
								}, {
									id : "44210",
									name : "서산시"
								}, {
									id : "44770",
									name : "서천군"
								}, {
									id : "44200",
									name : "아산시"
								}, {
									id : "44810",
									name : "예산군"
								}, {
									id : "44130",
									name : "천안시"
								}, {
									id : "44131",
									name : "천안시 동남구"
								}, {
									id : "44133",
									name : "천안시 서북구"
								}, {
									id : "44790",
									name : "청양군"
								}, {
									id : "44825",
									name : "태안군"
								}, {
									id : "44800",
									name : "홍성군"
								}, {
									id : "45790",
									name : "고창군"
								}, {
									id : "45130",
									name : "군산시"
								}, {
									id : "45210",
									name : "김제시"
								}, {
									id : "45190",
									name : "남원시"
								}, {
									id : "45730",
									name : "무주군"
								}, {
									id : "45800",
									name : "부안군"
								}, {
									id : "45770",
									name : "순창군"
								}, {
									id : "45710",
									name : "완주군"
								}, {
									id : "45140",
									name : "익산시"
								}, {
									id : "45750",
									name : "임실군"
								}, {
									id : "45740",
									name : "장수군"
								}, {
									id : "45110",
									name : "전주시"
								}, {
									id : "45113",
									name : "전주시 덕진구"
								}, {
									id : "45111",
									name : "전주시 완산구"
								}, {
									id : "45180",
									name : "정읍시"
								}, {
									id : "45720",
									name : "진안군"
								}, {
									id : "46810",
									name : "강진군"
								}, {
									id : "46770",
									name : "고흥군"
								}, {
									id : "46720",
									name : "곡성군"
								}, {
									id : "46230",
									name : "광양시"
								}, {
									id : "46730",
									name : "구례군"
								}, {
									id : "46170",
									name : "나주시"
								}, {
									id : "46710",
									name : "담양군"
								}, {
									id : "46110",
									name : "목포시"
								}, {
									id : "46840",
									name : "무안군"
								}, {
									id : "46780",
									name : "보성군"
								}, {
									id : "46150",
									name : "순천시"
								}, {
									id : "46910",
									name : "신안군"
								}, {
									id : "46130",
									name : "여수시"
								}, {
									id : "46870",
									name : "영광군"
								}, {
									id : "46830",
									name : "영암군"
								}, {
									id : "46890",
									name : "완도군"
								}, {
									id : "46880",
									name : "장성군"
								}, {
									id : "46800",
									name : "장흥군"
								}, {
									id : "46900",
									name : "진도군"
								}, {
									id : "46860",
									name : "함평군"
								}, {
									id : "46820",
									name : "해남군"
								}, {
									id : "46790",
									name : "화순군"
								}, {
									id : "47290",
									name : "경산시"
								}, {
									id : "47130",
									name : "경주시"
								}, {
									id : "47830",
									name : "고령군"
								}, {
									id : "47190",
									name : "구미시"
								}, {
									id : "47720",
									name : "군위군"
								}, {
									id : "47150",
									name : "김천시"
								}, {
									id : "47280",
									name : "문경시"
								}, {
									id : "47920",
									name : "봉화군"
								}, {
									id : "47250",
									name : "상주시"
								}, {
									id : "47840",
									name : "성주군"
								}, {
									id : "47170",
									name : "안동시"
								}, {
									id : "47770",
									name : "영덕군"
								}, {
									id : "47760",
									name : "영양군"
								}, {
									id : "47210",
									name : "영주시"
								}, {
									id : "47230",
									name : "영천시"
								}, {
									id : "47900",
									name : "예천군"
								}, {
									id : "47940",
									name : "울릉군"
								}, {
									id : "47930",
									name : "울진군"
								}, {
									id : "47730",
									name : "의성군"
								}, {
									id : "47820",
									name : "청도군"
								}, {
									id : "47750",
									name : "청송군"
								}, {
									id : "47850",
									name : "칠곡군"
								}, {
									id : "47110",
									name : "포항시"
								}, {
									id : "47111",
									name : "포항시 남구"
								}, {
									id : "47113",
									name : "포항시 북구"
								}, {
									id : "48310",
									name : "거제시"
								}, {
									id : "48880",
									name : "거창군"
								}, {
									id : "48820",
									name : "고성군"
								}, {
									id : "48250",
									name : "김해시"
								}, {
									id : "48840",
									name : "남해군"
								}, {
									id : "48270",
									name : "밀양시"
								}, {
									id : "48240",
									name : "사천시"
								}, {
									id : "48860",
									name : "산청군"
								}, {
									id : "48330",
									name : "양산시"
								}, {
									id : "48720",
									name : "의령군"
								}, {
									id : "48170",
									name : "진주시"
								}, {
									id : "48740",
									name : "창녕군"
								}, {
									id : "48120",
									name : "창원시"
								}, {
									id : "48125",
									name : "창원시 마산합포구"
								}, {
									id : "48127",
									name : "창원시 마산회원구"
								}, {
									id : "48123",
									name : "창원시 성산구"
								}, {
									id : "48121",
									name : "창원시 의창구"
								}, {
									id : "48129",
									name : "창원시 진해구"
								}, {
									id : "48220",
									name : "통영시"
								}, {
									id : "48850",
									name : "하동군"
								}, {
									id : "48730",
									name : "함안군"
								}, {
									id : "48870",
									name : "함양군"
								}, {
									id : "48890",
									name : "합천군"
								}, {
									id : "50130",
									name : "서귀포시"
								}, {
									id : "50110",
									name : "제주시"
								} ],
								thememapPlaces : [
										{
											id : '102',
											title : '&#39;쉬영갑서&#39; 제주도 게스트하우스',
											banner : 'http://t1.daumcdn.net/localimg/localimages/07/2015/theme/1505_01_pctop.png ',
											thumbnail : 'http://cfile80.uf.daum.net/image/240A704457761FD109A625',
											placeCount : '31',
											region : '제주'
										},
										{
											id : '89',
											title : '달콤한 밤을 위한 재즈클럽',
											banner : 'http://t1.daumcdn.net/localimg/localimages/07/2014/theme/141020_pctop.png',
											thumbnail : 'http://cfile217.uf.daum.net/image/17775E4A4F4CE88F279E7B',
											placeCount : '11',
											region : '전국'
										},
										{
											id : '93',
											title : '색다른 럭셔리, 글램핑 지도',
											banner : 'http://t1.daumcdn.net/localimg/localimages/07/2014/theme/141110_pctop.png',
											thumbnail : 'http://cfile102.uf.daum.net/image/2513DA35546C71723817AE',
											placeCount : '13',
											region : '전국'
										} ],
								gasPrice : {
									avgGasPrice : 1513.1033,
									avgDieselPrice : 1312.5421,
									avgLpgPrice : 898.6672,
									gasDate : "2021-03-15",
									dieselDate : "2021-03-15",
									lpgDate : "2021-03-15"
								},
								notice_popup : "N",
								event_notice : "N",
								event_notice2 : "N",
								rojaju_button : "Y",

								themeSearch : {
									'동네책방' : [ 104 ]
								}
							}
						}
					}
				});
	</script>




	<iframe
		style="position: absolute; left: 0; top: 0; width: 0; height: 0; border: 0"></iframe>
	<div class="fiy_layer HIDDEN">
		<!-- HIDDEN클래스 추가/삭제로 레이어 노출 제어 -->
		<div class="inner_fiy_layer">
			<div class="layer_head">
				<strong class="tit_fiy">정보수정</strong>
			</div>
			<div class="layer_body">
				<p class="desc_fiy">
					로그인을 하시면<br>요청 결과를 안내해드립니다
				</p>
				<div class="wrap_btn">
					<a href="#none" data-id="kakaoLogin" class="btn_fiy btn_kakao"><span
						class="inner_btn">카카오계정으로 로그인</span></a>
				</div>
				<button type="button" data-id="noLogin" class="btn_fiy2">로그인
					하지 않습니다</button>
			</div>
		</div>
	</div>
	<div class="FiyFrame HIDDEN">
		<iframe data-id="frame" frameborder="0" border="0" class="frame"
			src="" style="width: 0; height: 0;"></iframe>
	</div>
	<div class="LayerProfileEdit-DIMMED HIDDEN" data-id="dim">
		<div class="LayerProfileEdit" data-id="content">
			<strong class="tit_edit">프로필 수정</strong>
			<form data-id="editForm">
				<fieldset>
					<legend class="screen_out">이미지 및 닉네임 수정</legend>
					<div class="area_file">
						<img
							src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/title/empty_edit.png"
							width="54" height="54" alt="" data-id="profilePreview"> <label
							for="profileImgFile">프로필 이미지 수정</label> <input type="file"
							id="profileImgFile" data-id="profileImgFile" name="profileImage"
							accept="image/*"> <span class="img_loading HIDDEN"
							data-id="loadingImg"> <img
							src="//t1.daumcdn.net/localimg/localimages/07/2017/pc/img_loading2.gif"
							width="23" height="23" alt="로딩중">
						</span>
					</div>
					<div class="area_tf">
						<div class="box_tf">
							<label for="userNickname" class="screen_out">프로필 닉네임 수정</label> <input
								type="text" name="nickName" data-id="userNickname"
								id="userNickname" value="" maxlength="20">
						</div>
						<button type="submit" class="btn_edit" data-id="update">완료</button>
					</div>
				</fieldset>
			</form>
			<button type="button" class="bt_close" data-id="close">프로필
				수정 닫기</button>
		</div>
	</div>
	<div class="LayerProfile HIDDEN">
		<div class="info_profile">
			<div class="thumb_profile">
				<img src="" width="44" height="44" class="img_profile HIDDEN" alt=""
					data-id="profileImg"> <img
					src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/title/report_profile.png"
					width="44" height="44" class="img_profile HIDDEN"
					data-id="reportProfileImg" alt="">
			</div>
			<p class="desc_report HIDDEN" data-id="reportMentionTypeT">
				신고에 의해 임시조치된<br>프로필입니다. <a
					href="http://www.kakao.com/policy/right" target="_blank"
					class="link_profile">안내</a><a href="#none"
					class="link_profile edit">수정</a>
			</p>
			<p class="desc_report HIDDEN" data-id="reportMentionTypeA">
				신고에 의해 삭제된 프로<br>필입니다. <a href="#none"
					class="link_profile edit">프로필 입력</a>
			</p>
			<strong class="tit_name" data-id="nickName"></strong> <a href="#none"
				class="link_profile edit" data-id="edit">프로필 수정</a> <a
				href="https://accounts.kakao.com/logout?continue=https://map.kakao.com"
				class="btn_logout" data-id="logout">로그아웃</a>
		</div>
		<div class="my_page">
			<a href="#none" target="_top" data-id="fav">즐겨찾기</a> <a href="#none"
				target="_top" data-id="homeCompany">집∙회사</a> <a href="#none"
				target="_top" data-id="review">평가 <em class="num"
				data-id="reviewCount">0</em></a>
		</div>
	</div>
	<div class="CarRoutePaySettingView route_layer HIDDEN"
		style="top: 187px">
		<!-- 2018-12-18_v2 : route_layer 클래스 추가 -->
		<!-- 2018-12-18_v2 : 인라인 top값 잡아주세요 -->
		<div class="inner_route_layer">
			<!-- 2018-12-18_v2 추가 : form 감싸는 요소(div.inner_route_layer) 추가 -->
			<form data-id="paySettingForm" onsubmit="return false;">
				<fieldset>
					<!-- <legend class="screen_out">요금설정 폼</legend> 2018-12-18_v2 삭제 -->
					<!-- 2018-12-18_v2 추가 : 레이어 타이틀 영역 추가 -->
					<div class="layer_head">
						<strong class="tit_routeset">요금설정<span class="screen_out">레이어</span></strong>
					</div>
					<!--// 2018-12-18_v2 추가 : 레이어 타이틀 영역 추가 -->
					<div class="layer_body">
						<div class="pay_setting">
							<strong class="ico_pathfind tit_setting">통행료- 차종 설정</strong>
							<ul class="list_setting">
								<li><input type="radio" id="radioCarType1" class="inp_car"
									data-id="radioCarType1" name="choiceCar" checked="checked">
								<!-- 2018-12-18_v2 : name 속성 추가(선택범위의 name값 동일하게 설정) --> <label
									for="radioCarType1" class="lab_car"> <!-- <span data-id="radioCarSpan1" class="ico_pathfind ico_choiced"></span> 2018-12-18_v2 삭제 -->
										<span class="tit_sort">1종</span>
									<!-- 2018-12-18_v2 추가 : span.tit_sort 추가 -->
										<!-- : --> 승용차, 소형 승합차
								</label>
								<!-- 2018-12-18_v2 수정 : 텍스트수정(:삭제) --></li>
								<li><input type="radio" id="radioCarType2" class="inp_car"
									data-id="radioCarType2" name="choiceCar">
								<!-- 2018-12-18_v2 : name 속성 추가(선택범위의 name값 동일하게 설정) --> <label
									for="radioCarType2" class="lab_car"> <!-- <span data-id="radioCarSpan2" class="ico_pathfind"></span> 2018-12-18_v2 삭제 -->
										<span class="tit_sort">2종</span>
									<!-- 2018-12-18_v2 추가 : span.tit_sort 추가 -->
										<!-- : --> 중형 승합차, 중형 화물차
								</label>
								<!-- 2018-12-18_v2 수정 : 텍스트수정(:삭제) --></li>
								<li><input type="radio" id="radioCarType3" class="inp_car"
									data-id="radioCarType3" name="choiceCar">
								<!-- 2018-12-18_v2 : name 속성 추가(선택범위의 name값 동일하게 설정) --> <label
									for="radioCarType3" class="lab_car"> <!-- <span data-id="radioCarSpan3" class="ico_pathfind"></span> 2018-12-18_v2 삭제 -->
										<span class="tit_sort">3종</span>
									<!-- 2018-12-18_v2 추가 : span.tit_sort 추가 -->
										<!-- : --> 대형 승합차, 2축 대형 화물차
								</label>
								<!-- 2018-12-18_v2 수정 : 텍스트수정(:삭제) --></li>
								<li><input type="radio" id="radioCarType4" class="inp_car"
									data-id="radioCarType4" name="choiceCar">
								<!-- 2018-12-18_v2 : name 속성 추가(선택범위의 name값 동일하게 설정) --> <label
									for="radioCarType4" class="lab_car"> <!-- <span data-id="radioCarSpan4" class="ico_pathfind"></span> 2018-12-18_v2 삭제 -->
										<span class="tit_sort">4종</span>
									<!-- 2018-12-18_v2 추가 : span.tit_sort 추가 -->
										<!-- : --> 3축 대형 화물차
								</label>
								<!-- 2018-12-18_v2 수정 : 텍스트수정(:삭제) --></li>
								<li><input type="radio" id="radioCarType5" class="inp_car"
									data-id="radioCarType5" name="choiceCar">
								<!-- 2018-12-18_v2 : name 속성 추가(선택범위의 name값 동일하게 설정) --> <label
									for="radioCarType5" class="lab_car"> <!-- <span data-id="radioCarSpan5" class="ico_pathfind"></span> 2018-12-18_v2 삭제 -->
										<span class="tit_sort">5종</span>
									<!-- 2018-12-18_v2 추가 : span.tit_sort 추가 -->
										<!-- : --> 4축 이상 특수화물차
								</label>
								<!-- 2018-12-18_v2 수정 : 텍스트수정(:삭제) --></li>
								<li class="lst"><input type="radio" id="radioCarType6"
									class="inp_car" data-id="radioCarType6" name="choiceCar">
								<!-- 2018-12-18_v2 : name 속성 추가(선택범위의 name값 동일하게 설정) --> <label
									for="radioCarType6" class="lab_car"> <!-- <span data-id="radioCarSpan6" class="ico_pathfind"></span> 2018-12-18_v2 삭제 -->
										<span class="tit_sort">6종</span>
									<!-- 2018-12-18_v2 추가 : span.tit_sort 추가 -->
										<!-- : --> 경차
								</label>
								<!-- 2018-12-18_v2 수정 : 텍스트수정(:삭제) --></li>
							</ul>
							<a
								href="http://www.ex.co.kr/site/com/pageProcess.do?oneDpMnNo=&amp;selDpPgNm=menuno%3D100401011&amp;selDpMnNo=&amp;paramStr=&amp;detailTp=&amp;dirNm=portal&amp;kwd="
								target="_blank" class="link_office">한국도로공사</a>
						</div>
						<div class="pay_setting refuel_setting">
							<strong class="ico_pathfind tit_setting">주유비 설정</strong>
							<dl class="list_type">
								<dt class="tit_refuel">
									<label for="setRefuel" class="screen_out">유종</label>
									<!-- 2018-12-18_v2 수정 : class속성 추가 -->
								</dt>
								<dd class="detail_refuel">
									<div data-id="setRefuel" class="opt_pathfind">
										<!-- 2018-12-18_v2 : opt_open 클래스로 옵션박스 활성화 -->
										<div class="screen_out">주유 종류 선택상자</div>
										<span class="screen_out">선택내용 : </span> <a href="#"
											class="img_pathfind link_selected" data-id="setRefuelText">휘발유</a>
										<div class="screen_out">선택옵션</div>
										<ul class="list_opt">
											<li><a href="#" class="link_option" data-id="gasoline">휘발유</a>
											</li>
											<li><a href="#" class="link_option" data-id="light">경유</a>
											</li>
											<li><a href="#" class="link_option" data-id="lpg">LPG</a>
											</li>
										</ul>
									</div>
									<!-- <span data-id="refuelDate">2018.09.11</span> 기준 유가<em class="txt_value emph_value" data-id="refuelPrice">1,630원/L</em> 2018-12-18_v2 삭제 : 기준유가정보 위치이동으로 인한 삭제 -->
								</dd>
								<dt class="tit_refuel tit_mileage">
									<label for="setMileage" class="screen_out">연비</label>
									<!-- 2018-12-18_v2 수정 : class속성 추가 -->
								</dt>
								<dd class="detail_refuel detail_mileage">
									<!-- 연료1L당 주행거리 -->
									<input type="text" id="setMileage" maxlength="6"
										class="inp_mileage" data-id="setMileage" placeholder="주행거리">km
									/ 1L
								</dd>
								<!-- 2018-12-18_v2 수정 : 텍스트 삭제(연료1L당 주행거리),기준 텍스트 추가( / 1L) -->
							</dl>
							<span class="txt_base"> <span data-id="refuelDate">2021.03.15</span>
								기준 유가 <em class="txt_value emph_value" data-id="refuelPrice">1,513원/L</em>
							<!-- 2018-12-18_v2 추가 : 기준유가정보 위치이동으로 인한 추가 -->
							</span>
							<!-- 2018-12-18_v2 추가 : 기준유가정보 감싸는 span.txt_base 추가 -->
							<a href="http://www.opinet.co.kr/index.do?cmd=main"
								target="_blank" class="link_office">한국석유공사<!--  opinet --></a>
							<!-- 2018-12-18_v2 수정 : 텍스트 수정 -->
						</div>
						<button type="submit" class="btn_setting">확인</button>
						<!-- 2018-12-18_v2 추가 -->
						<ul class="list_setcaution">
							<li>주유비, 통행료 정보는 주유소 가격 및 통행시간에 따라 달라질 수 있습니다.</li>
							<!-- 2018-12-18_v2 수정 : 클래스(.ico_pathfind) 삭제 -->
							<li>해당 서비스 결과는 예상 비용으로, 참고용으로만 이용해 주시기 바랍니다.</li>
							<!-- 2018-12-18_v2 수정 : 클래스(.ico_pathfind) 삭제 -->
						</ul>
						<!-- <button type="submit" class="img_pathfind btn_setting">설정완료</button> 2018-12-18_v2 삭제 -->
					</div>
					<!-- 2018-12-18_v2 추가 : [div.pay_setting + ul.list_setcaution + button.btn_settin] 감싸는 div.layer_body 추가 -->
					<!-- 2018-12-18_v2 : 닫기 버튼 추가 -->
					<div class="layer_foot">
						<a href="#" class="btn_close" data-id="closeBtn">요금설정 레이어 닫기</a>
					</div>
					<!--// 2018-12-18_v2 : 닫기 버튼 추가 -->
				</fieldset>
			</form>
		</div>
	</div>
	<iframe class="saveFrame HIDDEN"></iframe>
	<div class="FavoriteManageView favorite_layer HIDDEN"
		style="margin-left: -179px; margin-top: -232px; top: 50%;">
		<div data-id="folderInfoLayer"
			class="inner_favorite_layer inner_favorite_layer2 HIDDEN">
			<fieldset>
				<div class="layer_head">
					<strong class="tit_interlock">폴더 정보</strong>
				</div>
				<div class="layer_body"></div>
				<div class="layer_foot">
					<a href="#none" class="btn_close">폴더 정보 레이어 닫기</a>
				</div>
			</fieldset>
		</div>
		<div data-id="folderSelectLayer"
			class="inner_favorite_layer inner_favorite_layer6 HIDDEN">
			<div class="layer_head">
				<strong class="tit_interlock">폴더 선택</strong>
			</div>
			<div class="layer_body">
				<ul class="list_folder">
					<li class="ADD"><a href="#none" class="link_folder"> <span
							class="ico_folder add"></span> <span class="tit_folder"> <span
								class="utile_folder"></span> <strong class="txt_folder">새
									폴더 추가</strong>
						</span>
					</a></li>
				</ul>
			</div>
			<div class="layer_foot">
				<a href="#none" class="btn_close">레이어 닫기</a>
			</div>
		</div>
		<div data-id="addFavoriteLayer"
			class="inner_favorite_layer inner_favorite_layer10 HIDDEN">
			<form autocomplete="off">
				<fieldset>
					<legend class="screen_out">즐겨찾기 저장 폼</legend>
					<div class="layer_head">
						<strong class="tit_interlock">즐겨찾기 저장</strong>
					</div>
					<div class="layer_body">
						<div class="box_tf">
							<label for="display1" class="screen_out">즐겨찾기 이름</label> <input
								type="text" id="display1" class="tf_save" maxlength="200"
								readonly="">
						</div>
						<div class="box_tf">
							<label for="favMemo" class="screen_out">설명 입력</label> <input
								type="text" id="favMemo" class="tf_save"
								placeholder="설명을 입력해 주세요." maxlength="50" readonly="">
						</div>
						<strong class="screen_out">카테고리 색 구분</strong>
						<ul class="list_inp">
							<!-- .checked 클래스 부여 -->
							<li data-color="01"><input type="radio" id="favoriteColor1"
								name="favoriteColor"> <label for="favoriteColor1"
								class="type1">타입1</label></li>
							<li data-color="02"><input type="radio" id="favoriteColor2"
								name="favoriteColor"> <label for="favoriteColor2"
								class="type2">타입2</label></li>
							<li data-color="03"><input type="radio" id="favoriteColor3"
								name="favoriteColor"> <label for="favoriteColor3"
								class="type3">타입3</label></li>
							<li data-color="04"><input type="radio" id="favoriteColor4"
								name="favoriteColor"> <label for="favoriteColor4"
								class="type4">타입4</label></li>
							<li data-color="05"><input type="radio" id="favoriteColor5"
								name="favoriteColor"> <label for="favoriteColor5"
								class="type5">타입5</label></li>
							<li data-color="06"><input type="radio" id="favoriteColor6"
								name="favoriteColor"> <label for="favoriteColor6"
								class="type6">타입6</label></li>
							<li data-color="07"><input type="radio" id="favoriteColor7"
								name="favoriteColor"> <label for="favoriteColor7"
								class="type7">타입7</label></li>
						</ul>
					</div>
					<div class="layer_foot">
						<button data-id="addOK" class="btn_submit">완료</button>
						<a href="#none" class="btn_close">레이어 닫기</a>
					</div>
				</fieldset>
			</form>
		</div>
		<div data-id="addFolderLayer"
			class="inner_favorite_layer inner_favorite_layer11">
			<form autocomplete="off">
				<fieldset>
					<input type="hidden" id="editFolderId">
					<legend class="screen_out">새 폴더 추가 폼</legend>
					<div class="layer_head">
						<strong class="tit_interlock">새 폴더 추가</strong>
					</div>
					<div class="layer_body">
						<div class="opt_interlock">
							<strong class="screen_out"></strong> <em class="screen_out">선택내용
								:</em> <span class="ico_seleced star">star</span>
							<button type="button" class="link_option btn_option">선택옵션</button>
							<ul class="list_option HIDDEN">
								<li data-icon="01" class="on"><a href="#none"
									class="link_option star">star</a></li>
								<li data-icon="02"><a href="#none"
									class="link_option heart">heart</a></li>
								<li data-icon="03"><a href="#none"
									class="link_option thunder">thunder</a></li>
								<li data-icon="04"><a href="#none"
									class="link_option check">check</a></li>
								<li data-icon="05"><a href="#none" class="link_option eye">eye</a></li>
								<li data-icon="06"><a href="#none"
									class="link_option smile">smile</a></li>
								<li data-icon="07"><a href="#none"
									class="link_option shine">shine</a></li>
								<li data-icon="08"><a href="#none"
									class="link_option clover">clover</a></li>
								<li data-icon="09"><a href="#none" class="link_option rect">rect</a></li>
								<li data-icon="10"><a href="#none" class="link_option like">like</a></li>
							</ul>
						</div>
						<dl class="group_form">
							<dt>공개 허용</dt>
							<dd>
								<div class="choice_comm choice_radio">
									<input type="radio" id="open" name="privacy" class="inp_choice"
										value="O"> <label for="open" class="lab_choice">
										<span class="ico_choice ico_radio"></span>공개
									</label>
								</div>
								<div class="choice_comm choice_radio">
									<input type="radio" id="private" name="privacy"
										class="inp_choice" value="P" checked="checked"> <label
										for="private" class="lab_choice"> <span
										class="ico_choice ico_radio"></span>비공개
									</label>
								</div>
							</dd>
						</dl>
						<p class="desc_private">
							<span class="ico_noti"></span> 폴더 공개 시 다른 사용자가 볼 수 있고 구독할 수 있으니
							민감 정보가 노출되지 않도록 주의해주세요.
						</p>
						<dl class="group_form">
							<dt>
								<label for="folderName" class="lab_tf">폴더명</label>
							</dt>
							<dd>
								<div class="box_tf">
									<input type="text" id="folderName" class="tf_save"
										placeholder="폴더명을 입력하세요." maxlength="30">
								</div>
							</dd>
						</dl>
						<dl class="group_form">
							<dt>
								<label for="memo" class="lab_tf">설명</label>
							</dt>
							<dd>
								<div class="box_tf">
									<input type="text" id="memo" class="tf_save"
										placeholder="설명을 입력하세요. (선택)" maxlength="50">
								</div>
							</dd>
						</dl>
						<div class="chkbox_interlock">
							<input type="checkbox" id="showMap"> <label for="showMap">지도에
								표시하기</label>
						</div>
						<p class="desc_interlock">해당 폴더의 즐겨찾기가 지도 위에 표시됩니다. 표시할 폴더는 최대
							10개까지 선택 가능합니다.</p>
					</div>
					<div class="layer_foot">
						<button data-id="addFolderOK" class="btn_submit">완료</button>
						<a href="#none" class="btn_close">레이어 닫기</a>
					</div>
				</fieldset>
			</form>
		</div>

		<div data-id="addHomeLayer"
			class="inner_favorite_layer inner_favorite_layer4 HIDDEN">
			<div class="layer_head">
				<strong class="tit_interlock tit_interlock2">홈 목록 추가<span
					class="screen_out">레이어</span></strong>
			</div>
			<div class="layer_body result_location">
				<p class="txt_interlock txt_interlock2">
					홈 목록 추가는 최대 3개까지 가능합니다.(집/회사 제외)<br>아래 기존 목록 중 하나를 선택하면, 삭제 후
					새로운 항목이 추가됩니다.
				</p>
				<form action="#" autocomplete="off">
					<fieldset>
						<em class="screen_out">검색 리스트</em>
						<ul data-id="registerList" class="list_region list_region_type2"></ul>
					</fieldset>
				</form>
			</div>
			<div class="layer_foot">
				<button type="reset" data-id="addHomeCancle"
					class="btn_interlock btn_cancel">취소</button>
				<button type="submit" data-id="addHomeOK"
					class="btn_interlock btn_confirm">선택 삭제</button>
				<a href="#" class="btn_close">집 등록 레이어 닫기</a>
			</div>
		</div>

		<div data-id="removeHomeLayer"
			class="inner_favorite_layer inner_favorite_layer3 HIDDEN">
			<!-- inner_xxx_layer:공통 / inner_xxx_layer1:타입별 -->
			<div class="layer_head">
				<strong class="screen_out">카카오맵 홈 목록 삭제 여부 레이어</strong>
			</div>
			<div class="layer_body">
				<em class="tit_interlock">홈 목록에서 삭제하시겠습니까?</em>
				<p class="txt_interlock">해당 항목이 홈 목록에서 삭제됩니다.</p>
			</div>
			<div class="layer_foot">
				<button type="button" data-id="removeHomeOK"
					class="btn_interlock btn_confirm">확인</button>
				<button type="button" class="btn_interlock btn_cancel">취소</button>
				<a href="#" class="btn_close"><span class="ico_interlock">카카오맵
						홈 목록 삭제 여부 레이어 닫기</span></a>
			</div>
		</div>

		<div data-id="resultLayer"
			class="inner_favorite_layer inner_favorite_layer9 HIDDEN">
			<div class="layer_body">
				<span class="ico_toast type1"><span class="ico_toast star"></span></span>
				<p class="desc_toast"></p>
			</div>
			<div class="layer_foot">
				<a href="#none" class="btn_close">레이어 닫기</a>
			</div>
		</div>
	</div>
	<div class="FavoriteStaticManageView favorite_layer HIDDEN"
		style="margin-left: -225px; margin-top: -80px;">
		<div data-id="searchLayer"
			class="inner_favorite_layer inner_favorite_layer5">
			<form action="#" data-id="searchBody">
				<fieldset>
					<div class="layer_head">
						<strong class="tit_interlock"><span class="type_name">집</span>
							등록<span class="screen_out">레이어</span></strong>
					</div>
					<div class="layer_body">
						<p class="txt_interlock">
							<span class="type_name2">집으</span>로 등록할 주소 또는 장소를 검색하세요.
						</p>
						<div class="wrap_search">
							<div class="interlock_search">
								<label for="favoriteEnroll" class="lab_region HIDDEN">주소
									또는 장소</label> <input type="text" data-id="favoriteSearchQuery"
									id="favoriteEnroll" class="tf_interlock" value="카카오">
							</div>
							<button type="button" data-id="findBtn" class="btn_search">검색</button>
						</div>
						<div class="interlock_result">
							<em class="screen_out">검색 리스트</em>
							<ul class="list_region" data-id="resultList"></ul>
						</div>
					</div>
					<div class="layer_foot">
						<a href="#" class="btn_close"><span class="type_name">집</span>
							등록 레이어 닫기</a>
					</div>
				</fieldset>
			</form>
		</div>

		<div data-id="resultLayer"
			class="inner_favorite_layer inner_favorite_layer1 HIDDEN">
			<div class="layer_head">
				<strong class="screen_out">즐겨찾기 등록 완료 확인 레이어</strong> <span
					class="ico_interlock ico_complete"></span>
			</div>
			<div class="layer_body">
				<em class="tit_interlock"><span class="type_name">집</span> 등록이
					완료되었습니다.</em>
			</div>
			<div class="layer_foot">
				<button type="button" data-id="resultOK"
					class="btn_interlock btn_confirm">확인</button>
				<a href="#" class="btn_close"><span class="ico_interlock">즐겨찾기
						등록 레이어 닫기</span></a>
			</div>
		</div>
	</div>
	<div class="place_layer HIDDEN">
		<div class="inner_place_layer">
			<div class="layer_head">
				<strong class="tit_data">카카오플레이스 데이터 가져오기</strong>
			</div>
			<div class="layer_body">
				<p class="desc_place">
					동일한 카카오계정으로 이용한 카카오플레이스에 아래 데이터가<br>저장되어 있습니다. 카카오맵으로
					가져오시겠습니까?
				</p>
				<div class="wrap_check">
					<dl>
						<dt class="txt_check">가고싶어요</dt>
						<dd>
							<em class="txt_num" data-id="favoriteCount">-</em>
						</dd>
					</dl>
					<dl>
						<dt class="txt_check">다녀왔어요</dt>
						<dd>
							<em class="txt_num" data-id="reviewCount">-</em>
						</dd>
					</dl>
					<p class="txt_info">카카오맵의 즐겨찾기와 평가로 저장됩니다.</p>
				</div>
				<button type="button" class="btn_get" data-id="migrationBtn">카카오맵으로
					가져오기</button>
			</div>
			<div class="layer_foot">
				<a href="#none" class="btn_close" data-id="closeBtn"> <span
					class="ico_migration ico_close">팝업 닫기</span>
				</a>
			</div>
		</div>
	</div>
	<div class="SkyviewOptions HIDDEN">
		<a href="#" class="hybrid ACTIVE">하이브리드</a>
		<div class="line"></div>
		<a href="#" class="yearRadio yearNow ACTIVE">최근사진</a> <a href="#"
			class="yearRadio">2019</a> <a href="#" class="yearRadio">2018</a> <a
			href="#" class="yearRadio">2017</a> <a href="#" class="yearRadio">2016</a>
		<a href="#" class="yearRadio">2015</a> <a href="#" class="yearRadio">2014</a>
		<a href="#" class="yearRadio">2013</a> <a href="#" class="yearRadio">2012</a>
		<a href="#" class="yearRadio">2011</a> <a href="#" class="yearRadio">2010</a>
		<a href="#" class="yearRadio">2009</a> <a href="#" class="yearRadio">2008</a>
	</div>
	<div adfit-unit-id="DAN-toa4t7s7d4yq" class="adFitPopupBanner"
		adfit-init="true"
		style="position: fixed; z-index: 900; opacity: 0; transition: opacity 0.5s ease 0s; bottom: 30px; right: 12px; display: none;"
		adfit-unit-idx="0">
		<div style="position: relative">
			<strong
				style="overflow: hidden; position: absolute; width: 0; height: 0; line-height: 0; text-indent: -9999px">Kakao
				광고</strong> <a target="_blank" style="display: block; overflow: hidden"
				adfit-landing-url=""
				href="https://analytics.ad.daum.net/clk?wa=UQPW9nNz3YRxuM8uZUaYLw&amp;enc=V6Z41yPm-bjzcPFCTMSgGOR8IssHNzd_dPAmwH8kBoqGYhXnTbfDAxrbWdvnN3dLSimxpP2PQY2bjNLrJNC12jgZPbZUQibOpDMepVyNEO7Lj93vcZJAydNjqUHKajpnONXG4T3kilpHqxcxwBfgojObzk8hidR4fpCB0GKXQHEjpxrNXj7dH7kRvthG78OStfhRpCFKn7-XL3a9y6UphxRtryVHgaTlVbarCVmzNpVMf8j-Dl3hq059fFC3McVPnQQSOE2Ila6dJak3qxuyyH6BoiA5U95QUqUoCfSaK_F9NsktpQW264e56lqdfaaHvCCe9AVMuw5u4bF9a0WsUq7IMuiVrotXWAyi6euha4RG2J1stRYmkURkkOmMBRomO2MsYUDuo0sa1S9kBGBn4WZwYHqmlNE_osUhYrNhS_A&amp;lc=1">
				<img style="display: block; border-radius: 5px"
				adfit-image-width="300" adfit-image-height="150"
				adfit-main-img-url="" adfit-alt-text="" width="300"
				src="https://t1.daumcdn.net/b2/creative/252945/71f56d2de9ec4820841cf9c30166ede8.jpg"
				alt="삼성화재다이렉트 자동차보험"> <span
				style="position: absolute; top: 0; right: 0; bottom: 0; left: 0; border: 1px solid #000; border-radius: 5px; opacity: 0.2; filter: alpha(opacity = 20)"></span>
				<span
				style="overflow: hidden; display: none; position: absolute; bottom: 0; left: 0; right: 0; height: 52px">
					<img
					src="https://t1.daumcdn.net/localimg/localimages/07/2018/pc/banner/bg_na.png"
					width="300" style="display: block; border-radius: 0 0 5px 5px"
					alt=""> <strong adfit-title=""
					style="overflow: hidden; position: absolute; bottom: 0; left: 0; right: 0; padding: 22px 20px 11px; font-size: 13px; font-family: AppleSDGothicNeo-Regular, 'Malgun Gothic', '맑은 고딕', dotum, '돋움', sans-serif; color: #fff; border-radius: 0 0 5px 5px; text-align: center; text-overflow: ellipsis; white-space: nowrap;"
					adfit-action-type="title"></strong>
			</span>
			</a>
			<div
				style="position: absolute; top: 0; right: 0; z-index: 10; width: 40px; height: 40px">
				<a href="#none"
					style="float: right; width: 24px; height: 24px; padding: 6px 0 0 6px"
					adfit-close-area=""> <img
					src="https://t1.daumcdn.net/localimg/localimages/07/2018/pc/banner/img_close2x.png"
					width="18" style="display: block" alt="광고 닫기">
				</a>
			</div>
		</div>
	</div>
</body>
</html>