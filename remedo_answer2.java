package remedoProject;

public class remedo_answer2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int a[]= {2,1,569,4,8,6700,6,7865,6};
		
		for(int i=0;i<a.length;i++)
		{
			
			for(int j=i+1;j<a.length;j++)
			{
				
				if(a[i]>a[j]) {
					int temp = a[i];
					a[i]=a[j];
					a[j]=temp;
					}
			}
		}
		
		for(int i=0;i<a.length;i++)
		{
			
			System.out.println(a[i]);
			
		}
	}

}
