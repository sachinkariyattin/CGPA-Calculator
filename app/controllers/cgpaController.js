(function () {

    var cgpaController = function ($scope) {
        
            $scope.cgpa0 = function () {
                return (parseFloat($scope.sgpa1) * parseFloat($scope.tc1)) / (parseFloat($scope.ce1));
            };
    
            $scope.cgpa1 = function () {
                  return  (((parseFloat($scope.sgpa1) * parseFloat($scope.tc1)) + (parseFloat($scope.sgpa2) * parseFloat($scope.tc2))) / (parseFloat($scope.ce1) + parseFloat($scope.ce2)));
            };

            $scope.cgpa2 = function () {
                return (((parseFloat($scope.sgpa1) * parseFloat($scope.tc1)) + (parseFloat($scope.sgpa2) * parseFloat($scope.tc2)) + (parseFloat($scope.sgpa3) * parseFloat($scope.tc3))) / (parseFloat($scope.ce1) + parseFloat($scope.ce2) + parseFloat($scope.ce3)));
            };

            $scope.cgpa3 = function () {
                return ((parseFloat($scope.sgpa1) * parseFloat($scope.tc1)) + (parseFloat($scope.sgpa2) * parseFloat($scope.tc2)) + (parseFloat($scope.sgpa3) * parseFloat($scope.tc3)) + (parseFloat($scope.sgpa4) * parseFloat($scope.tc4))) / (parseFloat($scope.ce1) + parseFloat($scope.ce2) + parseFloat($scope.ce3) + parseFloat($scope.ce4));
            };


            $scope.cgpa4 = function () {
                return ((parseFloat($scope.sgpa1) * parseFloat($scope.tc1)) + (parseFloat($scope.sgpa2) * parseFloat($scope.tc2)) + (parseFloat($scope.sgpa3) * parseFloat($scope.tc3)) + (parseFloat($scope.sgpa4) * parseFloat($scope.tc4)) + (parseFloat($scope.sgpa5) * parseFloat($scope.tc5))) / (parseFloat($scope.ce1) + parseFloat($scope.ce2) + parseFloat($scope.ce3) + parseFloat($scope.ce4) + parseFloat($scope.ce5));
            };

            $scope.cgpa5 = function () {
                return ((parseFloat($scope.sgpa1) * parseFloat($scope.tc1)) + (parseFloat($scope.sgpa2) * parseFloat($scope.tc2)) + (parseFloat($scope.sgpa3) * parseFloat($scope.tc3)) + (parseFloat($scope.sgpa4) * parseFloat($scope.tc4)) + (parseFloat($scope.sgpa5) * parseFloat($scope.tc5)) + (parseFloat($scope.sgpa6) * parseFloat($scope.tc6))) / (parseFloat($scope.ce1) + parseFloat($scope.ce2) + parseFloat($scope.ce3) + parseFloat($scope.ce4) + parseFloat($scope.ce5) + parseFloat($scope.ce6));
            };

            $scope.cgpa6 = function () {
                return ((parseFloat($scope.sgpa1) * parseFloat($scope.tc1)) + (parseFloat($scope.sgpa2) * parseFloat($scope.tc2)) + (parseFloat($scope.sgpa3) * parseFloat($scope.tc3)) + (parseFloat($scope.sgpa4) * parseFloat($scope.tc4)) + (parseFloat($scope.sgpa5) * parseFloat($scope.tc5)) + (parseFloat($scope.sgpa6) * parseFloat($scope.tc6)) + (parseFloat($scope.sgpa7) * parseFloat($scope.tc7))) / (parseFloat($scope.ce1) + parseFloat($scope.ce2) + parseFloat($scope.ce3) + parseFloat($scope.ce4) + parseFloat($scope.ce5) + parseFloat($scope.ce6) + parseFloat($scope.ce7));
            };

            $scope.cgpa7 = function () {
                return ((parseFloat($scope.sgpa1) * parseFloat($scope.tc1)) + (parseFloat($scope.sgpa2) * parseFloat($scope.tc2)) + (parseFloat($scope.sgpa3) * parseFloat($scope.tc3)) + (parseFloat($scope.sgpa4) * parseFloat($scope.tc4)) + (parseFloat($scope.sgpa5) * parseFloat($scope.tc5)) + (parseFloat($scope.sgpa6) * parseFloat($scope.tc6)) + (parseFloat($scope.sgpa7) * parseFloat($scope.tc7)) + (parseFloat($scope.sgpa8) * parseFloat($scope.tc8))) / (parseFloat($scope.ce1) + parseFloat($scope.ce2) + parseFloat($scope.ce3) + parseFloat($scope.ce4) + parseFloat($scope.ce5) + parseFloat($scope.ce6) + parseFloat($scope.ce7) + parseFloat($scope.ce8));
            };
        
        
        $scope.updateCgpa= function () {
            if($scope.dipcheck){

                $scope.sgpa1 = 0;
                $scope.tc1 = 0;
                $scope.ce1 = 0;
                $scope.sgpa2 = 0;
                $scope.tc2 = 0;
                $scope.ce2 = 0;
            }
            else{
                
                $scope.sgpa1 = '';
                $scope.tc1 = '';
                $scope.ce1 = '';
                $scope.sgpa2 = '';
                $scope.tc2 = '';
                $scope.ce2 = '';
            }
        };
        
        
    };
    
    cgpaController.$inject = ['$scope'];
    
    angular.module('cgpaApp').controller('cgpaController',cgpaController);

}())