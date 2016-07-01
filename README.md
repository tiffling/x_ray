# x_ray

`x_ray` is a gem that helps display code examples. Intended to be used as a lightweight tool for establishing a style guide. Supports plain HTML and ERB.

## Installation

Include gem in Gemfile:

```ruby
gem 'x_ray'
```

Import CSS file in `application.css`

```css
@import 'x_ray/prettifier';
```

Include helper in `application_helper.rb`

```ruby
include XRay::Helper
```

## Usage

Show HTML example:
```erb
<%= x_ray do %>
  <ol>
    <li>First thing</li>
    <li>Second thing</li>
  </ol>
<% end %>
```
<img src="http://i.imgur.com/og5zaFx.png">

Show HTML example using ERB:
```erb
<%= x_ray do %>
  <%= submit_tag 'Set Time Zone', class: 'button button-primary' %>
<% end %>
```
<img src="http://i.imgur.com/J0P4CIc.png">

Show ERB example:
```erb
<%= x_ray_erb(
  <<-ERB
    \<%= submit_tag 'Set Time Zone', class: 'button button-primary' %\>
  ERB
) %>
```
<img src="http://i.imgur.com/MszQnBz.png">

Show ERB example that inserts with a block:
<br>
<i>
  Due to ERB/Rails wonkiness, the ability to use `<%=` with a block is actually a hack (http://stackoverflow.com/questions/17374274/why-is-this-an-error-with-erb); so a hack was necessary to make this to work with `x_ray`. Note: passing ERB into the `<%=` block will not render the block in the "code scan" properly, please use `x_ray_manual` for this case.
</i>
```erb
<%= x_ray_erb_insert_with_block(:render, layout: 'components/collapsable', locals: { heading: 'My virtual training plan'}) do %>
  <div class="box-small">
    <p class="outer-box-none">look at all this fun stuff in here!</p>
  </div>
<% end %>
```
<img src="http://i.imgur.com/zEthweg.png">

Show ERB example manually:
<br>
<i>Use this for nitty gritty corner cases.</i>
```erb
<%= x_ray_manual(
  <<-ERB
    \<% provide(:body) do %\>
      \<%= render layout: 'components/collapsable', locals: { heading: 'My virtual training plan'} do %\>
        Foo Bar!
      \<% end %\>
    \<% end %\>
    \<%= yield(:body) %\>
  ERB
) do %>
  <% provide(:body) do %>
    <%= render layout: 'components/collapsable', locals: { heading: 'My virtual training plan', unique_key: '1sdasd', collapsable: nil} do %>
      Foo Bar!
    <% end %>
  <% end %>

  <%= yield(:body) %>
<% end %>
```
<img src="http://i.imgur.com/raa94ap.png">

### Customization

You can customize the output by overriding the default styles.

Example:
```css
.x-ray-block {
  .example {
    background-color: blue;
    padding: 40px;
  }

  .code-scan {
    background-color: red;
    padding: 40px;
  }
}
```
