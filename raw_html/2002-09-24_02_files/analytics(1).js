window.analytics = {

    trackEvents: function(listOfEvents){
        // Takes a list of arguments suitable for trackEvent.
        // Returns a jQuery Deferred object.
        // The deferred object is resolved when
        // all of the trackEvent calls are resolved.
        var dfd = $.Deferred();
        var deferreds = [];
        var _this = this;
        $.each(listOfEvents, function(i, params) {
                deferreds.push(_this.trackEvent(params));
        });
        $.when.apply($, deferreds).done(function() {
                dfd.resolve();
        });
        return dfd.promise();
    },

    trackEvent: function(params){
        // Takes an object of event parameters, eg:
        // { eventCategory: 'foo', eventAction: 'bar' }
        // Returns a jQuery Deferred object.
        // The deferred object is resolved when the GA call
        // completes or fails to respond within 2 seconds.
        var dfd = $.Deferred();

        if (typeof ga === 'undefined' || !ga.loaded) {
            // GA has not loaded (blocked by adblock?)
            return dfd.resolve();
        }

        var defaults = {
            hitType: 'event',
            eventLabel: document.title,
            hitCallback: function(){
                dfd.resolve();
            }
        }

        ga('send', $.extend(defaults, params));

        // Wait a maximum of 2 seconds for GA response.
        setTimeout(function(){
            dfd.resolve();
        }, 2000);

        return dfd.promise();
    },

    trackLinkClick: function(e, params){
        // A shortcut for the most common event tracking use-case:
        // tracking clicks on a link that would normally lead to
        // a new page, and waiting until the event has been tracked
        // before continuing to the new page.
        var _this = this;
        var href = $(e.currentTarget).attr('href');

        var callback;
        if (e.metaKey || e.ctrlKey) {
            callback = function() {};
        } else {
            e.preventDefault();
            callback = function() {
                if (href) {
                    window.location.href = href;
                }
            };
        }

        var defaults = {
            eventAction: e.type
        }

        return _this.trackEvent(
            $.extend(defaults, params)
        ).done(callback);
    }
}
