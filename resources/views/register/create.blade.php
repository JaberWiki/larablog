<x-layout>
    <section class="px-6 py-8">
        <div class="flex justify-center min-h-screen bg-gray-100">
            <div class="container sm:mt-40 mt-24 my-auto max-w-md border-2 border-gray-200 p-3 bg-white">
                <!-- header -->
                <div class="text-center my-6">
                    <h1 class="text-3xl font-semibold text-gray-700">Sign Up</h1>
                    <p class="text-gray-500">Sign up to join our community</p>
                </div>
                <!-- sign-in -->
                <div class="m-6">
                    <form class="mb-4" method="POST" action="/register">
                        @csrf
                        <x-form.input name="name" />
                        <x-form.input name="username" />
                        <x-form.input name="email" type="email" autocomplete="email" />
                        <x-form.input name="password" type="password" autocomplete="password"/>
                        <x-form.button name="register" />
                    </form>
                </div>
            </div>
        </div>
        </div>
    </section>
</x-layout>
