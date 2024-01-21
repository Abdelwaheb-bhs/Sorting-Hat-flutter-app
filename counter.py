import flet as ft

def main(page: ft.Page):
    page.title = "Flet counter example"
    page.vertical_alignment = ft.MainAxisAlignment.CENTER

    txt_number = ft.TextField(value="0", text_align=ft.TextAlign.RIGHT, width=100)

    def minus_click(e):
        txt_number.value = str(int(txt_number.value) - 1)
        page.update()

    def plus_click(e):
        txt_number.value = str(int(txt_number.value) + 1)
        page.update()

    page.add(
        ft.Row(
            app_bar=ft.AppBar(title="Counter"),
            body=ft.Stack(child=ft.Container(
                child=ft.Column(
                    children=[
                        ft.Text('hi mom'),
                        ft.Text('star wars'),
                    ]
                )
            ))
        )
    )

ft.app(target=main)