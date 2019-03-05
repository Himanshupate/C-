#include<iostream>
#include<stack>
#include<string>
using namespace std;

int main() {
  int i,j,k,l;
  stack <char> ss;
  
  string s;
  cin>>s;
  
  ss.push(s[0]);
  for(i=1;i<s.length();i++){
     switch (s[i])
     {
        case '}': if(ss.top()=='{'){
                        ss.pop();        
                  } 
                    break;
        case '>': if(ss.top()=='<'){
                        ss.pop();        
                  }
                    break;
        case ')': if(ss.top()=='('){
                        ss.pop();        
                  }
                    break;
        case ']': if(ss.top()=='['){
                        ss.pop();        
                  } 
                    break;
        default : ss.push(s[i]); 
     }
     
  }
  if(ss.empty()){
      cout<<"String is Balanced.";
  }
  else
  cout<<"String is Not Balanced.";
}
