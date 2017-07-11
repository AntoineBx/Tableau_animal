<?php



namespace CRUD\PlatformBundle\Controller;

use CRUD\PlatformBundle\Entity\TabAnimal;
use CRUD\PlatformBundle\Form\TabAnimalType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class AdvertController extends Controller
{
    public function indexAction()
    {
        $url = $this->get('router')->generate(
            'crud_platform_view',
            array('id' => 5)
        );


        return new Response('LALALA');
    }
    public function viewAction()
    {

        $tab=$this->getDoctrine()
            ->getRepository('CRUDPlatformBundle:TabAnimal')
            ->findAll();
        $resp = $this->get('templating')->render('CRUDPlatformBundle:Advert:index.html.twig',array(
            'tab'=>$tab,

        ));
        return new response($resp);

    }


    public function addAction(Request $request)
    {
         $animal = new TabAnimal();

        $form = $this->createForm(TabAnimalType::class,$animal);

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            $em=$this->getDoctrine()->getManager();
            $em->persist($animal);
            $em->flush();
            $url = $this->get('router')->generate('crud_platform_view');
            return new RedirectResponse($url);
        }

        return $this->render('CRUDPlatformBundle:Advert:add.html.twig',array(
            'form' => $form->createView()
        ));
    }
    public function editAction(Request $request,TabAnimal $animal)
    {
        $form = $this->createForm(TabAnimalType::class,$animal);

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            $em=$this->getDoctrine()->getManager();

            $em->flush();
            $url = $this->get('router')->generate('crud_platform_view');
            return new RedirectResponse($url);
        }

        return $this->render('CRUDPlatformBundle:Advert:add.html.twig',array(
            'form' => $form->createView()
        ));
    }
    public function deleteAction(TabAnimal $animal)
    {
        $em=$this->getDoctrine()->getManager();

        $em->remove($animal);
        $em->flush();
        $url = $this->get('router')->generate('crud_platform_view');
        return new RedirectResponse($url);
    }

}