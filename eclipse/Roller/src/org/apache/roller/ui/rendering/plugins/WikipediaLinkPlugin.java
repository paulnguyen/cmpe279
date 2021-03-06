/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  The ASF licenses this file to You
 * under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.  For additional information regarding
 * copyright in this work, please see the NOTICE file in the top level
 * directory of this distribution.
 */

package org.apache.roller.ui.rendering.plugins;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.roller.model.WeblogEntryPlugin;

import java.text.MessageFormat;
import java.util.regex.Pattern;

/**
 * Wikipedia Link Plugin.  This plugin provides a convenient way to write wikipedia search links.
 * <p/>
 * The plugin will replace strings of the form <code>wikipedia:"link text"{search text}</code> with a link that performs
 * a Wikipedia search.  The link will have the visible text "link text" and an href for the Google search.  You may omit
 * the <code>{search text}</code> portion, and the link text will be used as the search text.   You can also use an
 * exclamation point (<code>!</code>) instead of the colon (<code>:</code>), to get a lucky (&quot;lucky&quot;) search,
 * which takes the user directly to the best ranked match.
 *
 * @author <a href="mailto:anil@busybuddha.org">Anil Gangolli</a>
 * @version 2.1
 */
public class WikipediaLinkPlugin extends SearchPluginBase implements WeblogEntryPlugin {
    private static final String version = "2.1";
    private static final Pattern pattern = Pattern.compile("wikipedia([:!])\"(.*?)\"(?:\\{(.*?)\\})?");
    private static final MessageFormat linkFormat = new MessageFormat("<a href=\"http://www.wikipedia.org/wiki/Special:Search?search={3}\">{2}</a>");
    private static final MessageFormat luckyLinkFormat = new MessageFormat("<a href=\"http://www.wikipedia.org/wiki/Special:Search?search={3}&go=Go\">{2}</a>");

    private static final Log mLogger = LogFactory.getFactory().getInstance(WikipediaLinkPlugin.class);

    public WikipediaLinkPlugin() {
    }

    public String getName() {
        return "Wikipedia Search Links";
    }

    public String getDescription() {
        return "Replace wikipedia:&quot;link text&quot;{search text} with a link that performs a wikipedia search.  With ! instead of :," + "creates a &quot;lucky&quot; search, going directly to the first result.  With {search text} omitted, uses link text as the value of the search text.";
    }

    public String getVersion() {
        return version;
    }

    public Pattern getPattern() {
        return pattern;
    }

    public MessageFormat getLinkFormat() {
        return linkFormat;
    }

    public MessageFormat getLuckyLinkFormat() {
        return luckyLinkFormat;
    }

    public Log getLogger() {
        return mLogger;
    }
}
