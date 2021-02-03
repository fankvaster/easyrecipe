<?php

use yii\db\Migration;

/**
 * Class m210203_115434_insert_products_in_products_table
 */
class m210203_115434_insert_products_in_products_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert(
            'products',
            [
                'product_name' => 'молоко'
            ]
        );

        $this->insert(
            'products',
            [
                'product_name' => 'картофель'
            ]
        );

        $this->insert(
            'products',
            [
                'product_name' => 'морковь'
            ]
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->delete(
            'products',
            [
                'product_name' => 'молоко'
            ]
        );

        $this->insert(
            'products',
            [
                'product_name' => 'картофель'
            ]
        );

        $this->insert(
            'products',
            [
                'product_name' => 'морковь'
            ]
        );
    }
}
