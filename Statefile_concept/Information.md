The main part to understand is that now we have updated one instance and also created a new instance. 
So how does terraform knows that it only needs to update and not create ?
So terraform keeps track of your resources - what has been created and what has not been created through - terraform.tfstate file.

So now if you try to remove second new instance manually from state file - terraform thinks that it needs to create a new resource which is not true and eventually when you perform terraform apply it will create duplciate resource.

So the tfstate file is very important and concurrent execution might need to duplicacy or loss.