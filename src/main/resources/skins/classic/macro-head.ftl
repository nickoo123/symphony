<#--

    Symphony - A modern community (forum/BBS/SNS/blog) platform written in Java.
    Copyright (C) 2012-present, b3log.org

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#macro head title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>${title}</title>
<#nested>
<link rel="preconnect" href="${staticServePath}">
<meta name="copyright" content="八斗米" />
<meta http-equiv="Window-target" content="_top" />
<link rel="stylesheet" href="${staticServePath}/css/responsive.css?${staticResourceVersion}" />
<link rel="stylesheet" href="${staticServePath}/css/base.css?${staticResourceVersion}" />
<link rel="icon" type="image/png" href="${staticServePath}/images/favicon.png" />
<link rel="apple-touch-icon" href="${staticServePath}/images/faviconH.png">
<link rel="search" type="application/opensearchdescription+xml" title="八斗米" href="/opensearch.xml">
${siteVisitStatCode}
</#macro>
