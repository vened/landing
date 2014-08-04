(->
  "use strict"

  ctrl = angular.module("OrderController", [])

  ctrl.factory "Order", [ "$http", ($http) ->
    return(
      create: (obj) ->
        $http.post("/order", obj)
    )
  ]

  ctrl.controller 'orderNewCtrl', ["$scope", "$location", "Order", orderNewCtrl = ($scope, $location, Order) ->
    $scope.$watch "name", (val) ->
      console.log val
      return
    $scope.submit = ->
      console.log($scope.order)
      Order.create($scope.order).success () ->
        $location.path "/"
        return
    return
  ]


  return)()