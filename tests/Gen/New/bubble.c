struct a{
    int x,y;
}a[100];
int n=10;

void init() {
    int i;
    for(i=0;i<n;i++) {
        int xx,yy;
        a[i].x=(i*2+1)%20;
        a[i].y=(i*5-1)%40;
        xx = a[i].x;
        yy = a[i].y;
    printf("debug\n");
        printf("%d %d\n", xx, yy);
       // printf("(%d,%d)\n",a[i].x,a[i].y);
    }
    return;
}

int main() {
    int i,j;
    struct a c;
   // printf("\n");
    init();
	printf("debug\n");
    for(i=0;i<n;i++){
        for(j=i+1;j<n;++j){
        	
   // printf("");
            if(a[i].x>a[j].x || (a[i].x==a[j].x && a[i].y>a[j].y)){
                c = a[i];
                a[i] = a[j];
                a[j] = c;
            }
        }
    }
    for(i=0;i<n;++i){
    	//printf("debug\n");
      //  printf("%d\n", i);
        printf("%d,%d\n",a[i].x,a[i].y);
    }
}
