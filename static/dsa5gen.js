/**
 * User: Severin Orth <severin.orth@st.ovgu.de>
 * Date: 19.02.14
 * Time: 23:45
 */

// Bind NProgress
$(document).ajaxStart(function() { NProgress.start(); });
$(document).ajaxStop(function() { NProgress.done(); });

// Our 'i18n' stup
__ = function (x) {
    return x
};
