<?php

namespace CRUD\PlatformBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('CRUDPlatformBundle:Default:index.html.twig');
    }
}
