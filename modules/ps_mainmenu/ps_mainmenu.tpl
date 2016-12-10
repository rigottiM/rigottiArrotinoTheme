{function name="menu" nodes=[] depth=0}
  {strip}
    {if $nodes|count}
      <ul data-depth="{$depth}">
        {foreach from=$nodes item=node}
          <li class="{$node.type}{if $node.current} current{/if}{if $node.children|count} has-children{/if}">
            <a href="{$node.url}" {if $node.open_in_new_window} target="_blank" {/if}>{$node.label}</a>
            {if $node.children|count}
              <div class="panel">
                <div class="panel-title">{$node.label}</div>
                {menu nodes=$node.children depth=$node.depth}
                {if $node.image_urls|count}
                  <div class="panel-images-container">
                    {foreach from=$node.image_urls item=image_url}
                      <img src="{$image_url}">
                    {/foreach}
                  </div>
                {/if}
              </div>
            {/if}
          </li>
        {/foreach}
      </ul>
    {/if}
  {/strip}
{/function}

<div class="menu">
    {menu nodes=$menu.children}
</div>
