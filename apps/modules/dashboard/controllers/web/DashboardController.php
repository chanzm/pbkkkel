<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Init\Dashboard\Models\Users;
use Phalcon\Http\Request;
use Phalcon\Events\Manager as EventsManager;

class DashboardController extends Controller
{

    // public function beforeExecuteRoute(Dispatcher $dis)
    // {
    //     // var_dump();die();
    //     // if(!$this->session->has('auth') && $dis->getactionName()!='index') $this->response->redirect('/');
    // }

    public function indexAction()
    {
        // $db = $this->getDI()->get('db');

        // $sql = "Select * from Users";

        // $result = $db->fetchAll($sql, \Phalcon\Db\Enum::FETCH_ASSOC);

        // echo var_dump($result);

        // $this->view->disable(); 
        $this->view->pick('dashboard/tampilanawal');
    }

    public function registerAction()
    {
        //$this->view->disable();
        
    }

    public function dashawalAction(){
        $this->view->setVar('auth',  $this->session->get('user'));
        $this->view->pick('dashboard/dashboardawal');
    }   

    public function awalAction()
    {
        echo "lalala";
    }

     // public function storeAction()
    // {
    //     // $user = new Users();
    // 	// $request = new Request();
    //     // $user->username = $request->getPost('username');
    //     // $user->email = $request->getPost('email');
    //     // $user->password = $request->getPost('password');
    //     // var_dump($user);die;
    // 	// $user->save();
    //     // $this->response->redirect('/');
    // }

    // public function loginAction()
    // {
    //     // $request = new Request();
    //     // $username = $request->getPost('em');
    //     // $user = Users::findFirst("email='$username'");
    //     // $pass = $request->getPost('pw');
    //     // $users = Users::find();
    //     // $this->view->users = $users;
    //     // var_dump($user->password);die();
    //     // if($user)
    //     // {
    //     //     if($user->password == $pass){
    //     //         $this->session->set('auth',['username' => $user->username]);
    //     //         $this->flashSession->success('Anda telah login');
    //             // var_dump("masuk");die();
    //     //     }
    //     //     else{
    //     //         $this->flashSession->error('Password anda salah');
    //     //     }
    //     // }
    //     // else{
    //     //     $this->flashSession->error('Email tidak ditemukan');
    //     // }
    //     // $this->response->redirect('/');
    // }

    // public function logoutAction()
    // {
    //     // $this->session->destroy();
    //     // // $this->flashSession->success('Anda telah logout');
    //     // $this->response->redirect('/');
    // }

}   