/**
 * User: Severin Orth <severin.orth@st.ovgu.de>
 * Date: 20.02.14
 * Time: 00:52
 */

define([], function () {
   return Backbone.Collection.extend({

        // Overwritten for tornado-restless
        parse: function (data) {
            return data && data.objects;
        }

   });
});
