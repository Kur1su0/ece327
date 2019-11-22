#include<stdio.h>
#include <stdlib.h>


/* Run like ./gen row col output
 *
 *
 *
 */

#define MAXSIZE 100
void print_mat_vec(int is_vec, int* what);
void write_bin(char path[MAXSIZE]);
int* read_mat(char path[MAXSIZE],int* m);
int* read_vector(char path[MAXSIZE],int *m);
void add_opt();
void mul_opt();


int _verbos = 1;
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
    if(argc!=6){
        printf("wrong args. expect:./lab5 M1 M2 V ADDOUT MULOUT\n");
        exit(1);
    }
    sprintf(path_M1,"%s",argv[1]);
    sprintf(path_M2,"%s",argv[2]);
    sprintf(path_V,"%s",argv[3]);
    sprintf(path_add,"%s",argv[4]);
    sprintf(path_mul,"%s",argv[5]);
   
    if (_verbos==1){
        printf("M1 : %s\n",path_M1);
        printf("M2 : %s\n",path_M2);
        printf("V  : %s\n",path_V);
        printf("add: %s\n",path_add);
        printf("mul: %s\n",path_mul);
    }
    //read mat & vec
    m1=read_mat(path_M1,m1);
    printf("--------M1-------\n");
    print_mat_vec(0,m1);
    printf("-----------------\n");
    
    printf("--------M2-------\n");
    m2=read_mat(path_M2,m2);
    print_mat_vec(0,m2);
    printf("-----------------\n");
    
    printf("---------V-------\n");
    v=read_vector(path_V,v);
    print_mat_vec(1,v);
    printf("-----------------\n");
    
    //create add_ptr
    printf("---------Add-------\n");
    add = (int*)calloc(row*col,sizeof(int));
    add_opt();
    print_mat_vec(0,add);
    printf("-----------------\n");
    
    //create mul_ptr
    printf("---------Mul-------\n");
    mul = (int*)calloc(row,sizeof(int));
    mul_opt();
    print_mat_vec(1,mul);
    printf("-----------------\n");


    //get size
    //read mat&vector.
    
    
    
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
            for(inner_r=0;inner_r<row;inner_r++){
                printf("mul[%d]: add[%d,%d]*v[%d]=%4d*%4d\n",r,r,c,inner_r*c,add[r*col+inner_r],v[inner_r*c]);
                mul[r*col] += add[r*col+c]*v[inner_r*col];


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
/*
void write_bin(int* what){
    int length=row;
    FILE *fpt=NULL;
    fpt=fopen(path,"wb");
    if(fpt==NULL){
        printf("file(%s) not exist!\n",path);
        exit(1);
    }
    fwrite(&length,sizeof(int),1,fpt);
    fwrite(&what,sizeof(what),1,fpt);
    fclose(fpt);
}
*/
