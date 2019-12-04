#include<stdio.h>
#include <stdlib.h>
#include <time.h>
#include<string.h>

/* Run like ./lab5 M1 M2 V ADDOUT MULOUT v
 *
 *
 *
 */

#define MAXSIZE 100
#define UNIT 1000000000.0
void print_mat_vec(int is_vec, int* what);
void write_bin(int add_or_mul,int* what, char path[MAXSIZE]);
int* read_mat(char path[MAXSIZE],int* m);
int* read_vector(char path[MAXSIZE],int *m);
void add_opt();
void mul_opt();


int _verbos = 0;
int _random = 1;
int row,col;
int v_row;

int* m1=NULL;
int* m2=NULL;
int* v=NULL;
int* add=NULL;
int* mul=NULL;

char path_M1[MAXSIZE];
char path_M2[MAXSIZE];
char path_V[MAXSIZE];
char path_add[MAXSIZE];
char path_mul[MAXSIZE];




int main(int argc, char* argv[]){
//parse args
    if(argc<6){
        printf("wrong args. expect:./lab5 M1 M2 V ADDOUT MULOUT\n");
        exit(1);
    }
    sprintf(path_M1,"%s",argv[1]);
    sprintf(path_M2,"%s",argv[2]);
    sprintf(path_V,"%s",argv[3]);
    sprintf(path_add,"%s",argv[4]);
    sprintf(path_mul,"%s",argv[5]);
    
    if(argc==7){
        char kw[MAXSIZE];
        sprintf(kw,"%s",argv[6]);
        if (strcmp(kw,"-v")==0 || strcmp(kw,"-V")==0){
            _verbos = 1;
            printf("Verbose Mode\n");
        }
    }
    
    if (_verbos==1){
        printf("M1 : %s\n",path_M1);
        printf("M2 : %s\n",path_M2);
        printf("V  : %s\n",path_V);
        printf("add: %s\n",path_add);
        printf("mul: %s\n",path_mul);
    }
    //read mat & vec
    m1=read_mat(path_M1,m1);
    if(_verbos==1){ 
        printf("--------M1-------\n");
        print_mat_vec(0,m1);
        printf("-----------------\n");
    }
    m2=read_mat(path_M2,m2);
    if(_verbos==1){ 
        printf("--------M2-------\n");
        print_mat_vec(0,m2);
        printf("-----------------\n");
    }
    v=read_vector(path_V,v);
    
    if(_verbos==1){ 
        printf("---------V-------\n");
        print_mat_vec(1,v);
        printf("-----------------\n");
    }
    //create add_ptr
    add = (int*)calloc(row*col,sizeof(int));
    
    
    struct timespec t1,t2;
    double add_time;
    //clock_t begin_add = clock();
    clock_gettime(CLOCK_REALTIME,&t1);
    add_opt();
    clock_gettime(CLOCK_REALTIME,&t2);
    
    add_time=(double)(t2.tv_nsec-t1.tv_nsec)/UNIT;
    
    //clock_t end_add = clock();
    //double add_time = (double)(end_add - begin_add);// / CLOCKS_PER_SEC;
    
    
    
    if(_verbos==1){ 
        printf("---------Add-------\n");
        print_mat_vec(0,add);
        printf("-----------------\n");
    }
    
    
    //create mul_ptr
    mul = (int*)calloc(row,sizeof(int));
    
    struct timespec t1_mul, t2_mul;
    double mul_time;
    clock_gettime(CLOCK_REALTIME,&t1_mul);
    mul_opt();
    clock_gettime(CLOCK_REALTIME,&t2_mul);
    
    mul_time=(double)(t2_mul.tv_nsec-t1_mul.tv_nsec)/UNIT;
    
   
    
    
    if(_verbos==1){ 
        printf("---------Mul-------\n");
        print_mat_vec(1,mul);
        printf("-----------------\n");
    }
    print_mat_vec(1,mul);
    //write_bin();
    write_bin(1,add,path_add);
    write_bin(2,mul,path_mul);
    if(_verbos==1){ 
        printf("write to %s & %s\n",path_add,path_mul);
    }

    //get size
    //read mat&vector.
    
    
    printf("size\t%ix%i\tadd_timing\t%f\tmul_timing\t%f\n",row,row,add_time,mul_time);
       
    
    free(m1);
    free(m2);
    free(v);
    free(add);
    free(mul);
    return 0;
}

void add_opt(){
    int res;
    int r,c;
    for(r=0;r<row;r++){
        for(c=0;c<col;c++){
            add[r*col+c]=m1[r*col+c]+m2[r*col+c];
        }
    }
}

/* 1X1+ 2X2 + 3X3
 *
 * 1 2 3 * 1
 *         2
 *         3
 */


void mul_opt(){
    int r,c, inner_r;
    for(r=0;r<row;r++){
        for(c=0;c<col;c++){
            for(inner_r=0;inner_r<1;inner_r++){
                if(_verbos==1){
                    printf("mul[%d]: add[%d,%d]*v[%d]=%4d*%4d\n" ,r,r,c,c,add[r*col+c],v[c]);
                }
                mul[r] += add[r*col+c]*v[c];


            }
        }
    }
}





int* read_vector(char path[MAXSIZE], int* mat){
    int size=0;
    int val=0;
    FILE* fpt=fopen(path,"rb");
    if(fpt==NULL){
        printf("Not exist");
        exit(1);
    }
    fread(&size,sizeof(int),1,fpt);
    
    mat=(int*)calloc(size,sizeof(int));

    int i=0;
    for(i=0;i<size;i++){
        fread(&val,sizeof(int),1,fpt);
        mat[i]=val;
    }

    //fclose(fpt);
    return mat;


}

int* read_mat(char path[MAXSIZE],int* mat){
    int size=0;
    int val=0;
    FILE* fpt=fopen(path,"rb");
    if(fpt==NULL){
        printf("Not exist");
        exit(1);
    }
    fread(&size,sizeof(int),1,fpt);

    row = size; 
    col = size;
    
    mat=(int*)calloc(row*col,sizeof(int));

    int i=0;
    for(i=0;i<size*size;i++){
        fread(&val,sizeof(int),1,fpt);
        mat[i]=val;
    }

    fclose(fpt);
    return mat;
}
void print_mat_vec(int is_vec, int* what){
    int r,c;
    if(is_vec==0){
        for(r=0;r<row;r++){
            for(c=0;c<col;c++){
                printf("%4i ",what[r*col+c]);
            }
            printf("\n");
        }
    }else{
        for(r=0;r<row;r++){
            printf("%4i\n",what[r]);
        }

    }
}
void write_bin(int add_or_mul, int* what, char path[MAXSIZE]){
    //1 for add 2 for mul
    int size=add_or_mul==1?row*row:row;
    FILE *fpt=NULL;
    fpt=fopen(path,"wb");
    if(fpt==NULL){
        printf("file(%s) not exist!\n",path);
        exit(1);
    }
    fwrite(&size,sizeof(int),1,fpt);
    int i=0,val=0;
    for(i=0;i<size;i++){
        val=what[i];
        fwrite(&val,sizeof(int),1,fpt);
    }
    fclose(fpt);
}