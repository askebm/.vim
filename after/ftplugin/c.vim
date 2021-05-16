let g:ycm_filter_diagnostics = {                                      
  \ "c": {                                                            
  \   "regex": [                                                      
  \     "-mno-fp-ret-in-387",                                         
  \     "-mpreferred-stack-boundary=3",                               
  \     "-mskip-rax-setup",                                           
  \     "-mindirect-branch=thunk-extern",                             
  \     "-mindirect-branch-register",                                 
  \     "-fno-allow-store-data-races",                                
  \     "-fplugin-arg-structleak_plugin-byref-all",                   
  \     "-fno-var-tracking-assignments",                              
  \     "-fconserve-stack",                                           
  \     "-mrecord-mcount"                                             
  \   ]                                                               
  \ }                                                                 
  \} 
