struct a{
    int x,y;
}a[100];
int n=10;

void init() {
    int i;
    for(i=0;i<n;i++) {
        a[i].x=(i*2+1)%20;
        a[i].y=(i*5-1)%40;
        printf("%d %d\n", a[i].x, a[i].y);
       // printf("(%d,%d)\n",a[i].x,a[i].y);
    }
    return;
}

int main() {
    int i,j;
    struct a c;
    init();
    for(i=0;i<n;i++){
        for(j=i+1;j<n;++j){
            if(a[i].x>a[j].x || (a[i].x==a[j].x && a[i].y>a[j].y)){
                c = a[i];
                a[i] = a[j];
                a[j] = c;
            }
        }
    }
    for(i=0;i<n;++i){
    	printf("debug\n");
      //  printf("%d\n", i);
        printf("[%d,%d]\n",a[i].x,a[i].y);
    }
}
