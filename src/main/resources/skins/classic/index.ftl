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
<#include "macro-head.ftl">
<#include "common/title-icon.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${symphonyLabel}">
        <meta name="description" content="${symDescriptionLabel}"/>
        </@head>
        <link rel="stylesheet" href="${staticServePath}/css/index.css?${staticResourceVersion}" />
        <link rel="canonical" href="${servePath}">
    </head>
    <body class="index">
        ${HeaderBannerLabel}
        <#include "header.ftl">
        <div class="main">
            <div class="wrapper">
                <div class="index-main">
                    <div class="index-tabs fn-flex" id="articles">
                        <span class="current" data-index="0">
                        </span>
                        <span class="tags" data-index="1">
                        </span>
                        <span class="users" data-index="2">
                        </span>
                    </div>
                    <div class="index-tabs-panels list article-list">
                        <ul>
                            <#list recentArticles as article>
                                <#include "common/list-item.ftl">
                            </#list>
                            <#if recentArticles?size == 0>
                            <li class="ft-center">
                                <br><br>
                                ${systemEmptyLabel}<br>
                                ${systemEmptyTipLabel}<br>
                                <img src="${staticServePath}/images/404/5.gif"/>
                            </li>
                            </#if>
                            <li>
                                <a class="more" href="${servePath}/recent">${moreRecentArticleLabel}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <#include "footer.ftl">
    <script src="${staticServePath}/js/channel${miniPostfix}.js?${staticResourceVersion}"></script>
    <script type="text/javascript">
        $('.metro-item').height($('.metro-item').width());

        // tag click
        $('.preview, .index-tabs > span').click(function (event) {
            var $it = $(this),
            maxLen = Math.max($it.width(), $it.height());
            $it.prepend('<span class="ripple" style="top: ' + (event.offsetY - $it.height() / 2)
                + 'px;left:' + (event.offsetX - $it.width() / 2) + 'px;height:' + maxLen + 'px;width:' + maxLen + 'px"></span>');

            setTimeout(function () {
                $it.find('.ripple').remove();
            }, 800);
        });
    </script>
</body>
</html>
