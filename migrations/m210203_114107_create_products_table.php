<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%products}}`.
 */
class m210203_114107_create_products_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%products}}', [
            'id' => $this->primaryKey(),
            'product_name' => $this->string(),
        ]);

        $this->createIndex(
            'product_name',
            'products',
            'product_name'
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropIndex(
            'product_name',
            'products'
        );

        $this->dropTable('{{%products}}');
    }
}
