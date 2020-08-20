<?php

namespace AdvancedElementSliderPro\ComponentHandler;

use Shopware\Bundle\EmotionBundle\ComponentHandler\ComponentHandlerInterface;
use Shopware\Bundle\EmotionBundle\Struct\Collection\PrepareDataCollection;
use Shopware\Bundle\EmotionBundle\Struct\Collection\ResolvedDataCollection;
use Shopware\Bundle\EmotionBundle\Struct\Element;
use Shopware\Bundle\StoreFrontBundle\Struct\ShopContextInterface;
use Shopware\Models\Category\Category;
use Shopware\Components\Model\ModelManager;

class KategoriesTeaserHandler implements ComponentHandlerInterface
{
    const URL_MASK_TEMPLATE = 'shopware.php?sViewport=%s&sCategory=%d';

    /**
     * @var ModelManager
     */
    private $modelManager;

    public function __construct(ModelManager $modelManager)
    {
        $this->modelManager = $modelManager;
    }

    public function supports(Element $element)
    {
        return $element->getComponent()->getTemplate() === 'advanced_element_slider_pro';
    }

    public function prepare(PrepareDataCollection $collection, Element $element, ShopContextInterface $context)
    {
        $elementData = $element->getConfig()->getAll();
        $categoryId = $elementData ? $elementData['vi_arise_button_link_element'] : null;
        $categoryIdTwo = $elementData ? $elementData['vi_arise_button_link_element_second'] : null;
//        $categoryIdThree = $elementData ? $elementData['vi_arise_button_link_element_three'] : null;

        /** @var Category $category */
        $category = $this->modelManager->getRepository(Category::class)->find($categoryId);
        $categoryTwo = $this->modelManager->getRepository(Category::class)->find($categoryIdTwo);
//        $categoryThree = $this->modelManager->getRepository(Category::class)->find($categoryIdThree);

        if ($category->getBlog()) {
            $viAriseButtonHref = sprintf(self::URL_MASK_TEMPLATE, 'blog', $categoryId);
        } else {
            $viAriseButtonHref = sprintf(self::URL_MASK_TEMPLATE, 'cat', $categoryId);
        }

        if ($categoryTwo->getBlog()) {
            $viAriseButtonHrefTwo = sprintf(self::URL_MASK_TEMPLATE, 'blog', $categoryIdTwo);
        } else {
            $viAriseButtonHrefTwo = sprintf(self::URL_MASK_TEMPLATE, 'cat', $categoryIdTwo);
        }

//        if ($categoryThree->getBlog()) {
//            $viAriseButtonHrefThree = sprintf(self::URL_MASK_TEMPLATE, 'blog', $categoryIdThree);
//        } else {
//            $viAriseButtonHrefThree = sprintf(self::URL_MASK_TEMPLATE, 'cat', $categoryIdThree);
//        }

        if (!empty($categoryId)) {
            $element->getData()->set('vi_arise_button_link_element', $viAriseButtonHref);
        } else {
            $element->getData()->set('vi_arise_button_link_element', $categoryId);
        }

        if (!empty($categoryIdTwo)) {
            $element->getData()->set('vi_arise_button_link_element_second', $viAriseButtonHrefTwo);
        } else {
            $element->getData()->set('vi_arise_button_link_element_second', $categoryIdTwo);
        }

//        if (!empty($categoryIdThree)) {
//            $element->getData()->set('vi_arise_button_link_element_three', $viAriseButtonHrefThree);
//        } else {
//            $element->getData()->set('vi_arise_button_link_element_three', $categoryIdThree);
//        }
    }

    public function handle(ResolvedDataCollection $collection, Element $element, ShopContextInterface $context)
    {
    }
}
