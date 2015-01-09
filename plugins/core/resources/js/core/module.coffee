angular.module 'core', [
    'ngAnimate',
    'ngCookies',
    'ngRoute',

    'angular-loading-bar',
    'btford.socket-io',
    'persona',
    'toaster',
    'ui.bootstrap', 
]


angular.module('core').config ($httpProvider, $animateProvider) ->
    $httpProvider.interceptors.push 'urlPrefixInterceptor'
    $httpProvider.interceptors.push 'unauthenticatedInterceptor'
    $animateProvider.classNameFilter /(slide|slide-slow|fade|flipCycle)/