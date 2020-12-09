import OptionsComponent from 'OptionsComponent';
import $ from 'jquery';

const render = () => new OptionsComponent('#options_component_container').render();

beforeEach( () => {
  $(document.body).html(`<div id="options_component_container" />`);
});

describe('when options not  present', () => {
  beforeEach( () => {
    $('#options_component_container').attr('data-options', '[""]');
    render();
  });

  it('renders option input', () => {
    expect($('ol li').html()).toContain(`<input type="text" name="question[options][]" value="">`);
  });

  it('renders option input delete button', () => {
    expect($('ol li').html()).toContain('<a class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>');
  });

  it('renders add button', () => {
    expect($('.footer').html()).toBe('<a class=\"btn btn-primary\" id=\"add_btn\"><i class=\"fa fa-plus mr-1\"></i> Add </a>');
  });
});

describe('when options present', () => {
  beforeEach( () => {
    $('#options_component_container').attr('data-options', '["red", "green"]');
    render();
  });

  it('renders option input with value', () => {
    expect($('ol li:first').html()).toContain('<input type="text" name="question[options][]" value="red">');
    expect($('ol li:last').html()).toContain('<input type="text" name="question[options][]" value="green">');
  });
  
  it('allows you to delete option', () => { 
    $('ol li:first i.fa-trash').click();
    expect($('ol li:first').html()).not.toContain('<input type="text" name="question[options][]" value="red">');
  });

  it('allows you to add option', () => { 
    $('#add_btn').click();
    expect($('ol li').length).toBe(3)
    expect($('ol li:last').html()).toContain(`<input type="text" name="question[options][]" value="">`);
  });

  it('should not allow to delete last option', () => {
    fail('Todo')
  });

  it('should not allow to add more than 4 options', () => {
    fail('Todo')
  });

});