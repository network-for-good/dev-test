import $ from 'jquery';

const addButtonDom = () => {
    return `
      <a class="btn btn-primary" id="add_btn"><i class="fa fa-plus mr-1"></i> Add </a>
    `
  }

const optionElementDom = (val) => {
  return `<li class="mb-2">
        <input type="text" name="question[options][]" value="${val}">
        <a class="btn btn-danger btn-sm"  ><i class="fa fa-trash"></i></a>
    </li>
  `
}

export default class OptionsComponent {
  constructor(container_id) {
    this.container = $(container_id)
    this.data = this.container.data('options') || ['']
    this.container.append("<ol/><div class='footer'/>")
  }

  render() {
    this.renderAddButton()
  }

  addOptionElement(val) {
    let elm = $(optionElementDom(val))
    this.bindRemoveEvent(elm.find('a'))
    this.container.find('ol').append(elm)
  }

  bindRemoveEvent(elm) {
    elm.on('click', (e) => $(this).parent('li').remove() )
  }

  renderAddButton() {
    let addBtn = $(addButtonDom())
    addBtn.on("click", (e) => this.addOptionElement('') )
    this.container.find('.footer').append(addBtn)
  }  
}