#include<iostream>
#include <stdio.h>

using namespace std;
struct Node{
    int val;
    struct Node * left = NULL;
    struct Node *right = NULL;
}*root = NULL;

struct Node *create(int x){
    struct Node *tt = new Node;
    tt-> val = x;
    return tt;
}
void bst(struct Node *temp, int x){
    if(x < temp->val) {
        if(temp-> left != NULL) return bst(temp->left , x); 
        else temp->left = create(x);
    }
    else {
        if(temp-> right != NULL) return bst(temp->right , x);
        else temp->right = create(x);
    }
}
void insert(int x){
    if(root != NULL) bst(root , x);
    else root  = create(x); 
}
void preorder(struct Node *temp){
    if(temp == NULL) return;
    cout<<temp->val <<" ";
    preorder(temp->left);
    preorder(temp->right);
}
void postorder(struct Node *temp){
    if(temp == NULL) return;
    postorder(temp->left);
    postorder(temp-> right);
    cout<<temp->val<<" ";
}
void inorder(struct Node *temp){
    if(temp == NULL) return;
    inorder(temp->left);
    cout<<temp->val<<" ";
    inorder(temp->right);
}
int main()
{
    int i,n;
    char c = 'y';
    while(c == 'Y' || c == 'y'){
        cout<<"Enter the number: ";
        cin>>n;
        insert(n);;
        cout<<"If you want to add new number then enter Y: ";
        cin>>c;
    }
    cout<<endl;
    cout<<"Inorder   :  "; inorder(root); cout<<endl;
    cout<<"Preorder  :  "; preorder(root); cout<<endl;
    cout<<"Postorder :  "; postorder(root); cout<<endl;
}
