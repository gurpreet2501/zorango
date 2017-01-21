<?php

use Phinx\Migration\AbstractMigration;

class WeddingProductsTable extends AbstractMigration
{
    /**
     * Change Method.
     *
     * Write your reversible migrations using this method.
     *
     * More information on writing migrations is available here:
     * http://docs.phinx.org/en/latest/migrations.html#the-abstractmigration-class
     *
     * The following commands can be used in this method and Phinx will
     * automatically reverse them when rolling back:
     *
     *    createTable
     *    renameTable
     *    addColumn
     *    renameColumn
     *    addIndex
     *    addForeignKey
     *
     * Remember to call "create()" or "update()" and NOT "save()" when working
     * with the Table class.
     */
    public function change()
    {
         $dispatch = $this->table('wedding_products', ['id' => true]);
         $dispatch->addColumn('name','string')
         ->addColumn('price','float')
         ->addColumn('description','string')
         ->addColumn('weight_unit','string')
         ->addColumn('weight','string')
         ->addColumn('brand','string')
         ->addColumn('stock','integer')
         ->addColumn('items_per_carton','integer')
         ->addColumn('created_at','datetime')
         ->addColumn('updated_at','datetime')
         ->save();
    }
}
