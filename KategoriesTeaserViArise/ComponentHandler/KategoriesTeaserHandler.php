<?php

namespace KategoriesTeaserViArise\ComponentHandler;

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
        return $element->getComponent()->getTemplate() === 'vi_arise_categories_teaser';
    }

    public function prepare(PrepareDataCollection $collection, Element $element, ShopContextInterface $context)
    {
        $elementData = $element->getConfig()->getAll();
        $categoryId = $elementData ? $elementData['vi_arise_button_link_element'] : null;
        /** @var Category $category */
        $category = $this->modelManager->getRepository(Category::class)->find($categoryId);
        if ($category->getBlog()) {
            $viAriseButtonHref = sprintf(self::URL_MASK_TEMPLATE, 'blog', $categoryId);
        } else {
            $viAriseButtonHref = sprintf(self::URL_MASK_TEMPLATE, 'cat', $categoryId);
        }

        if (!empty($categoryId)) {
            $element->getData()->set('vi_arise_button_href', $viAriseButtonHref);
        } else {
            $element->getData()->set('vi_arise_button_href', $categoryId);
        }
    }

    public function handle(ResolvedDataCollection $collection, Element $element, ShopContextInterface $context)
    {
    }
}
