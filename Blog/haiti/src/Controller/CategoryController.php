<?php

namespace App\Controller;

use App\Entity\Category;
use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CategoryController extends AbstractController
{
    /**
     * @Route("/category", name="indexDesPost")
     **/
    public function index(CategoryRepository $categoryRepository): Response
    {
        return $this->render('categorie/index.html.twig', [
            'posts' => $categoryRepository->findAll(),
        ]);
    }


    
}
