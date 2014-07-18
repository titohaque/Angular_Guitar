var guitar = angular.module('guitar', []);



guitar.controller('myValue',function ($scope,$http) {
	$scope.i = 0; 
		$http({
			url:"data/data.json",
			method:"GET"
			
		})
		.success (function(resp){
			$scope.x=resp;	
		
			
			
			$scope.image1='images/'+ $scope.x.allProducts[$scope.i].image_path;
			$scope.product_info=$scope.x.allProducts[$scope.i].product_discription;
		});

		
		$scope.next=function(){
			
			$scope.i++ ;
			if($scope.i<7){
			$scope.image1='images/'+ $scope.x.allProducts[$scope.i].image_path;
			
			}
			
			else{$scope.i=-1;}
			
			
				$scope.product_info=$scope.x.allProducts[$scope.i].product_discription;
			};

			$scope.previous=function(){
				
				$scope.i-- ;
				if($scope.i>=0){
				$scope.image1='images/'+ $scope.x.allProducts[$scope.i].image_path;
				
				}
				
				else{$scope.i=7;}
					$scope.product_info=$scope.x.allProducts[$scope.i].product_discription;
				};
				
			


    	
    });
    
    
