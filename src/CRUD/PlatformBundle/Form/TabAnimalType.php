<?php

namespace CRUD\PlatformBundle\Form;


use Symfony\Bridge\Doctrine\Form\Type\EntityType;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;


class TabAnimalType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('animal',TextType::class)
            ->add('description',TextType::class)
            ->add('type', EntityType::class, array(
                'class'=>'CRUD\PlatformBundle\Entity\Type',
                'choice_label'=>'nom',
                'expanded'=>false,
                'multiple'=>false
                ));
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'CRUD\PlatformBundle\Entity\TabAnimal'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'crud_platformbundle_tabanimal';
    }


}
