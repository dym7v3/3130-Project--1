import java.util.Random;



public class Searches {

	static int bin_assign=0;
	static int bin_compare=0;
	
	public static void main(String [] args)
	{
		
		
		//Makes an array with 1000 elements.
		int [] arr_num=new int[1000];
		
		
		//This fills the 1000 element array with numbers between 1-1000.
		arr_num=random();
		
		//This prints the array before it is sorted. 
		System.out.println("This is the unsorted array.");
		print(arr_num);
		
		//This is the sorted array print out and status.
		System.out.println("This is the sorted array by linear-search-based insertion sort.");
		
		linear(arr_num);
		
		System.out.println("This is the sorted array by binary-search-based insertion sort. ");
		binary(arr_num);
	}
	
	//This function generates random numbers between 1-1000.
	public static int [] random()
	{
		//creates an thousand element array which will be filled with integers between
		//1-1000.
		int [] array= new int[1000];
		
		//This will be used to generate the random numbers. The class random'
		Random r = new Random();
		int Low = 1;
		int High = 1000;
			
		//This will fill the array with random numbers between 1-1000.
		for(int i=0; i<array.length; i++)
			array[i] = r.nextInt(High-Low) + Low;
		
		return array; //Returns the thousand element array.
	}

	//Function which will print the 1000 element array. 
	public static void print(int [] array)
	{
		int count=0;
		
		for(int i=0; i<array.length; i++)	
		{
			
			//If the count is 20 then it will put the numbers on a new line.
			if(count==20)
			{
				System.out.println();
				count=0; //resets the count 
			}
			System.out.print(array[i]+","); //This prints a number and a comma in between the numbers. 
			count++; //This adds one to the count until it reaches 20 then it adds a new line. 
			
		}
		//This will print an two spaces between the sorted and unsorted array. 
		System.out.println("\n");
	}
	
	//Function which is the linear-search-based insertion sort
	public static void linear(int [] array)
	{
		
		int key;
		int i;
		int comp=1;
		int assign=0;
		long startTime= System.nanoTime();
		for(int j=1; j<array.length; j++)
		{
			key=array[j]; //takes the key and assigns it to the first element.
			
			i=j-1; //This put the start put to begin looking. 
			
			
			//Moves the elements over if they to right so then the key can be 
			//inserted into the right pass in the array. 
			while(i>=0 && array[i]>key )
			{
				comp++; //This counts the amount of comparisons. 
				array[i+1]=array[i];
				i=i-1;
				assign++;// adds one to the assignment because of i+1 getting assigned another element from array. 
				
			}
			
			
			assign++; //This adds one more assignment. 
			array[i+1]=key;
			
			
		}
		long endTime= System.nanoTime();
		System.out.println("\nThat took " + (endTime - startTime) + " nanoseconds!");
		System.out.println("The amount of assignments was: "+assign+"\nThe amount of comparisons is: "+comp+"\n");
		
		print(array);
		
	}

	//Function which is the binary-search-based insertion sort.
	public static void binary(int [] array)
	{
		//This values will be used for the location after 
		//binary search find it. Then the selected value and j will
		//be used to shift the values to the right.
		int location, selection, j;
		
	    
		long startTime= System.nanoTime();
		for(int i=1; i<array.length; ++i)
		{
			
			j=i-1;
			
			selection=array[i];
			
			
			//Calls the binary search function to find the location to insert the value.
			location= bin_search(array, selection, 0, j);
			
			
			//This shifts all the values to the right and inserts the correct 
			//number in the correct place. 
			while(j>=location)
			{
				array[j+1]=array[j];
				j--;
				bin_assign++;//counts the assignment of moving the elements. 
			
			}
			//inserts the variable.       
			array[j+1]=selection;
			bin_assign++;
			        
			      
			   
		}
		long endTime= System.nanoTime();
		System.out.println("\nThat took " + (endTime - startTime) + " nanoseconds!");
		System.out.println("The amount of assignments was: "+bin_assign+"\nThe amount of comparisons is: "+bin_compare+"\n");
		print(array); //prints the sorted array. 
	}
	//Performs the binary search on the sorted part of the array. 
	public static int bin_search(int arr [], int num, int low, int high )
	{
		if(high<=low)
		{
			bin_compare++; //This adds one more comparison because the num is compared to the an element
			//in the array. Then it returns the location. 
			return(num >arr[low]) ? (low+1): low;
		}
		int mid=(low+high)/2;
		//This finds the middle. 
		
		if(num==arr[mid])
		{
			bin_compare++; //Comparisons the number to an element in the array. so plus one comparison. 
			return mid+1;
		}
		
		if(num>arr[mid])
		{
			bin_compare++; //Comparison the number to the an element in the array. 
			return bin_search(arr, num, mid+1, high);
		}
		
		//This continues to go recursive until the correct locaton is found. 
		return bin_search(arr, num, low, mid-1);
	
	}
}
