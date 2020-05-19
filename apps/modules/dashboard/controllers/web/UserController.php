<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Init\Dashboard\Models\Users;
use Phalcon\Http\Request;
use Phalcon\Events\Manager as EventsManager;

class UserController extends Controller
{
	public function registerAction()
	{
		 $this->view->pick('dashboard/register');
	}

	public function storeregisterAction()
	{
        $usr = new users();
        $usr->nama = $this->request->getPost('nama');
        $usr->email = $this->request->getPost('email');
        $password = $this->request->getPost('password');
        $usr->password = $this->security->hash($password);


        $u = users::findFirst("nama = '$usr->nama'");
        if ($u) { 
            $this->flashSession->error("Gagal register. Username telah digunakan.");
            return $this->response->redirect('register');
            // echo "username sudah digunakan.";
        }
        else
        {
        	//echo "hi canteq";
        	// die();
           $usr->save();
           $this->response->redirect('login');
         //    // printf (strlen($admin->password));
            //echo "masuk";
         //    // return $this->response->redirect('loginadmin');
        }
        
    }

        public function loginAction()
        {
            $_isUser = $this->session->get('user');
            if($_isUser)
            {
                $this->response->redirect('dashawal');
            }
            $this->view->pick('dashboard/login');

    	}

    	public function storeloginAction()
        {
            $nama = $this->request->getPost('nama');
            $password = $this->request->getPost('password');

    	       $user = Users::findFirst("nama = '$nama'");

    	       if ($user){
    	           if($this->security->checkHash($password, $user->password)){
    	               $this->session->set(
    	                   '        ',
    	                   [
    	                       'id' => $user->id,
    	                       'nama' => $user->nama,
    	                   ]
    	               );
    	               // echo "Masuk bos mantap";
             
                       $this->response->redirect('dashawal');
    	            //    (new Response())->redirect('dashawal')->send();
    	           }
    	           else{
    	               // echo "Gagal masuk sebagai admin. Silakan cek kembali username dan password anda.";
    	               $this->flashSession->error("Gagal masuk. Invalid email or Password.");
    	               $this->response->redirect('login');
    	           }
    	       }
    	       else{
    	           $this->flashSession->error("Akun tidak ditemukan");
    	           // echo "Akun tidak ditemukan.";
    	               $this->response->redirect('login');
    	       }
        }

       public function logoutAction()
       {
           $this->session->destroy();
           $this->response->redirect("/");
       }
}